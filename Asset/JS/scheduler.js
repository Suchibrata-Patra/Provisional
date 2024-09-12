      let scheduleData = {};
      let teacherClasses = {};
      let absentTeachers = [];
      let availableTeachers = [];
      let replacementTeachers = [];
      let provisionalAssignments = {}; // Track which teacher is assigned at each time slot

      // Fetch the schedule data
      function fetchScheduleData() {
        fetch("final.json")
          .then((response) => response.json())
          .then((data) => {
            scheduleData = data.schedule;
            generateTeacherClasses();
            loadAvailableTeachers();
          })
          .catch((error) => console.error("Error fetching schedule data:", error));
      }

      // Generate the number of classes each teacher has
      function generateTeacherClasses() {
        teacherClasses = {};
        Object.values(scheduleData).forEach((entries) => {
          entries.forEach((entry) => {
            if (!teacherClasses[entry.teacher]) {
              teacherClasses[entry.teacher] = 0;
            }
            teacherClasses[entry.teacher]++;
          });
        });
      }

      // Load available teachers
      function loadAvailableTeachers() {
        availableTeachers = new Set();
        Object.values(scheduleData).forEach((entries) => {
          entries.forEach((entry) => {
            availableTeachers.add(entry.teacher);
          });
        });
        availableTeachers = Array.from(availableTeachers);
      }

      window.onload = fetchScheduleData;

      // Load the schedule for the selected day
      function loadSchedule() {
        const day = document.getElementById("daySelect").value;

        if (day) {
          absentTeachers = [];
          document.getElementById("teacherSelectionSection").style.display = "block";

          if (scheduleData[day]) {
            populateTeacherList();

            // Show absent teachers as an alert after teacher list is populated
            setTimeout(() => {
              // alert(`Select Absent Teachers for ${day}. ${absentTeachers.join(', ')}`);
            }, 100);
          } else {
            document.getElementById("teacherList").innerHTML = "<p>No schedule available for the selected day</p>";
          }
        } else {
          document.getElementById("teacherSelectionSection").style.display = "none";
        }
      }
      // Function to count the number of classes a teacher has on a specific day
      function countClassesForTeacher(teacher, day) {
        return scheduleData[day].filter(entry => entry.teacher === teacher).length;
      }

      // Populate the teacher checkbox list
      function populateTeacherList() {
        const teacherList = document.getElementById("teacherList");
        teacherList.innerHTML = ""; // Clear previous data

        if (availableTeachers.length > 0) {
          availableTeachers.forEach((teacher) => {
            const classCount = countClassesForTeacher(teacher, document.getElementById("daySelect").value);
            let checkbox = `<div>
        <input type="checkbox" id="teacher-${teacher}" value="${teacher}" onchange="updateAbsentTeachers()">
        <label for="teacher-${teacher}" style="padding-left:5px;">
          ${teacher} <strong style="color:Orange;">(${classCount})</strong>
        </label>
      </div>`;
            teacherList.innerHTML += checkbox;
          });
        } else {
          teacherList.innerHTML = "<p>No teachers available</p>";
        }
      }



      // Update the list of absent teachers based on selected checkboxes
      function updateAbsentTeachers() {
        absentTeachers = Array.from(document.querySelectorAll('#teacherList input:checked')).map(input => input.value);
      }

      // Generate provisional routine based on available teachers
      // Generate provisional routine based on available teachers
      // Helper function to count consecutive classes for a teacher
      function countConsecutiveClasses(teacher, day) {
        let teacherClasses = scheduleData[day].filter(entry => entry.teacher === teacher);
        let timeSlots = teacherClasses.map(entry => entry.timeSlot).sort(); // Sort by time slots
        let consecutiveCount = 0;
        let maxConsecutive = 0;

        // Count consecutive time slots
        for (let i = 1; i < timeSlots.length; i++) {
          if (timeSlots[i] === timeSlots[i - 1] + 1) {
            consecutiveCount++;
          } else {
            maxConsecutive = Math.max(maxConsecutive, consecutiveCount);
            consecutiveCount = 0; // Reset if not consecutive
          }
        }
        return Math.max(maxConsecutive, consecutiveCount); // Return the highest consecutive count
      }

      // Generate provisional routine based on available teachers
      // Helper function to count consecutive classes for a teacher
      function countConsecutiveClasses(teacher, day) {
        let teacherClasses = scheduleData[day].filter(entry => entry.teacher === teacher);
        let timeSlots = teacherClasses.map(entry => entry.timeSlot).sort(); // Sort by time slots
        let consecutiveCount = 0;
        let maxConsecutive = 0;

        // Count consecutive time slots
        for (let i = 1; i < timeSlots.length; i++) {
          if (timeSlots[i] === timeSlots[i - 1] + 1) {
            consecutiveCount++;
          } else {
            maxConsecutive = Math.max(maxConsecutive, consecutiveCount);
            consecutiveCount = 0; // Reset if not consecutive
          }
        }
        return Math.max(maxConsecutive, consecutiveCount); // Return the highest consecutive count
      }

      // Generate provisional routine based on available teachers
      function generateProvisionalRoutine() {
        document.getElementById("loader-overlay").style.display = "flex";
        setTimeout(() => {
          document.getElementById("loader-overlay").style.display = "none";
        }, 5000);

        const day = document.getElementById("daySelect").value;
        const provisionalTable = document.getElementById("provisionalTable");
        provisionalTable.innerHTML = "";

        if (day && scheduleData[day]) {
          replacementTeachers = availableTeachers.filter(teacher => !absentTeachers.includes(teacher));

          // Create a map to track the number of classes for each replacement teacher
          let teacherClassCount = {};
          replacementTeachers.forEach((teacher) => {
            teacherClassCount[teacher] = 0;
          });

          // Count classes for each available teacher
          scheduleData[day].forEach((entry) => {
            if (replacementTeachers.includes(entry.teacher)) {
              teacherClassCount[entry.teacher]++;
            }
          });

          // Generate the provisional routine for absent teachers
          scheduleData[day].forEach((entry) => {
            if (absentTeachers.includes(entry.teacher)) {
              const absentTeacherSubject = entry.subject;
              const timeSlot = entry.timeSlot;
              const classLevel = entry.class; // Class level like "Class 11" or "Class 12"

              let subjectTeachers = replacementTeachers.filter(teacher => {
                const isSameSubject = scheduleData[day].some(e => e.teacher === teacher && e.subject === absentTeacherSubject);
                const isFreeAtTimeSlot = !scheduleData[day].some(e => e.teacher === teacher && e.timeSlot === timeSlot);
                return isSameSubject && isFreeAtTimeSlot;
              });

              // If the class is Class 11 or Class 12, only allow same-subject teachers
              if (classLevel === "Grade 11" || classLevel === "Grade 12") {
                if (subjectTeachers.length === 0) {
                  // No same-subject teacher available, mark as "Off Period"
                  let row = `<tr>
              <td>${entry.class}</td>
              <td>${entry.section}</td>
              <td>${entry.teacher}</td>
              <td>Off Period</td>
              <td>${entry.timeSlot}</td>
            </tr>`;
                  provisionalTable.innerHTML += row;
                  return; // Skip to the next iteration
                }
              } else {
                // For other classes, fallback to any available teacher if no same-subject teachers are available
                if (subjectTeachers.length === 0) {
                  subjectTeachers = replacementTeachers.filter(teacher => {
                    return !scheduleData[day].some(e => e.teacher === teacher && e.timeSlot === timeSlot);
                  });
                }
              }

              // Filter out teachers who are already scheduled for another class at the same time slot
              subjectTeachers = subjectTeachers.filter(teacher => {
                return !scheduleData[day].some(e => e.teacher === teacher && e.timeSlot === timeSlot);
              });

              // Sort same-subject and fallback teachers by the number of classes and consecutive classes
              subjectTeachers.sort((a, b) => {
                if (teacherClassCount[a] === teacherClassCount[b]) {
                  const aConsecutive = countConsecutiveClasses(a, day);
                  const bConsecutive = countConsecutiveClasses(b, day);
                  return aConsecutive - bConsecutive;
                }
                return teacherClassCount[a] - teacherClassCount[b];
              });

              // Get the teacher with the least number of classes or least consecutive classes
              let replacementTeacher = subjectTeachers.shift();


              if (replacementTeacher) {
                teacherClassCount[replacementTeacher]++;
              }

              let row = `<tr>
          <td>${entry.class}</td>
          <td>${entry.section}</td>
          <td>${entry.teacher}</td>
          <td>${replacementTeacher || "N/A"}</td>
          <td>${entry.timeSlot}</td>
        </tr>`;
              provisionalTable.innerHTML += row;
            }
          });

          document.getElementById("provisionalRoutineSection").style.display = "block";
        } else {
          document.getElementById("provisionalRoutineSection").style.display = "none";
        }
      }

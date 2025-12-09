// Cuando añada tus cursos aquí, funcionará al 100%
document.addEventListener("DOMContentLoaded", () => {

    const courses = document.querySelectorAll(".course");
    let completed = new Set();

    courses.forEach(course => {
        course.addEventListener("click", () => {
            const id = course.dataset.id;

            if (completed.has(id)) {
                completed.delete(id);
                course.classList.remove("completed");
            } else {
                completed.add(id);
                course.classList.add("completed");
            }

            updateUnlocked();
        });
    });

    function updateUnlocked() {
        courses.forEach(course => {
            const prereqs = course.dataset.prereq.split(",").filter(x => x);

            if (prereqs.length === 0) {
                course.classList.add("unlocked");
                course.classList.remove("locked");
                return;
            }

            const ok = prereqs.every(p => completed.has(p));

            if (ok) {
                course.classList.add("unlocked");
                course.classList.remove("locked");
            } else {
                course.classList.remove("unlocked");
                course.classList.add("locked");
            }
        });
    }

    updateUnlocked();
});

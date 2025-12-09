body {
    font-family: Arial, sans-serif;
    background: #f4f4f4;
    margin: 0;
    padding: 20px;
}

h1 {
    text-align: center;
    margin-bottom: 10px;
}

#semesters-container {
    display: grid;
    grid-template-columns: repeat(12, minmax(200px, 1fr));
    gap: 15px;
    overflow-x: auto;
}

.semester {
    background: #ffffff;
    padding: 10px;
    border-radius: 8px;
    border: 2px solid #ccc;
}

.semester h2 {
    text-align: center;
    margin-top: 0;
}

.course {
    background: #fafafa;
    border: 2px solid #999;
    padding: 10px;
    border-radius: 6px;
    margin-bottom: 10px;
    cursor: pointer;
    transition: 0.2s;
}

.course:hover {
    transform: scale(1.03);
}

/* Curso aprobado */
.completed {
    background: #c6f7c6;
    border-color: #2e9d32;
}

/* Curso desbloqueado pero no aprobado */
.unlocked {
    background: #e0ecff;
    border-color: #3b6df2;
}

/* Cursos bloqueados */
.locked {
    opacity: 0.5;
}

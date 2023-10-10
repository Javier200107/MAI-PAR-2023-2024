# MAI-PAR-2023-2024

## Domain.pddl
Este archivo define el dominio del problema en lenguaje PDDL (Planning Domain Definition Language). Incluye la especificación de los siguientes elementos:

- **Requirements**: Los requisitos necesarios para la planificación, como `:strips`, `:equality`, etc.
- **Predicados**: Declaración de predicados que representan propiedades o estados del mundo, como `clear ?x`, `on-table ?x`, etc.
- **Acciones**: Definición de acciones que pueden llevarse a cabo en el dominio, incluyendo parámetros, precondiciones y efectos de cada acción.

Asegúrate de definir correctamente los requisitos, predicados y acciones según las necesidades de tu problema específico.

## Problem.pddl
Este archivo describe el problema concreto que deseas resolver en el dominio definido en Domain.pddl. Incluye los siguientes elementos:

- **Objects**: Definición de los objetos o elementos con los que trabajará el planificador, como bloques, robots, etc.
- **Estado Inicial (Init)**: Declaración de las condiciones iniciales del mundo, incluyendo la ubicación de objetos, relaciones, y estados iniciales de predicados.
- **Estado Objetivo (Goal)**: Especificación de las condiciones que deseas alcanzar como objetivo del planificador.

Asegúrate de que los objetos y las condiciones iniciales y objetivos sean coherentes con el dominio definido en Domain.pddl.


import '../models/workout_model.dart';

class WorkoutRepository {
  static List<Workout> getWorkouts() {
    return [
      // --- INICIANTE ---
      const Workout(
        id: 'beg_1',
        name: 'Fundamentos do Boxe Sombra',
        duration: '15 min',
        description: 'Uma introdução segura aos movimentos básicos do boxe (jab, direto, gancho) sem impacto. Foque na postura e na respiração. Mantenha os joelhos levemente flexionados e nunca estenda completamente o cotovelo nos socos para proteger as articulações.',
        goal: 'Aprender a postura de guarda, coordenação motora e aquecimento cardiovascular.',
        equipment: 'Nenhum (apenas espaço livre)',
        level: WorkoutLevel.beginner,
        isVip: false,
      ),
      const Workout(
        id: 'beg_2',
        name: 'Kickboxing Cardio Leve',
        duration: '20 min',
        description: 'Combinação de socos básicos com chutes baixos no ar. Movimentos controlados para não lesionar o quadril. Execute os chutes na altura da cintura ou abaixo até ganhar flexibilidade.',
        goal: 'Aumentar a frequência cardíaca e mobilidade dos quadris.',
        equipment: 'Nenhum',
        level: WorkoutLevel.beginner,
        isVip: false,
      ),
      const Workout(
        id: 'beg_3',
        name: 'Defesa e Esquiva',
        duration: '15 min',
        description: 'Treino focado em movimentação de pernas e esquivas laterais. Mantenha a guarda alta. Não cruze as pernas ao caminhar.',
        goal: 'Fortalecimento de pernas e noções de defesa.',
        equipment: 'Nenhum',
        level: WorkoutLevel.beginner,
        isVip: false,
      ),

      // --- INTERMEDIÁRIO (VIP) ---
      const Workout(
        id: 'int_1',
        name: 'Muay Thai Burn',
        duration: '30 min',
        description: 'Série intensa alternando joelhadas, cotoveladas e chutes circulares. Inclui exercícios de calistenia (flexões e agachamentos) nos intervalos. Mantenha o abdômen contraído durante as joelhadas.',
        goal: 'Queima calórica elevada e resistência muscular.',
        equipment: 'Colchonete (opcional para abdominais)',
        level: WorkoutLevel.intermediate,
        isVip: true,
      ),
      const Workout(
        id: 'int_2',
        name: 'Condicionamento de MMA',
        duration: '25 min',
        description: 'Simulação de rounds de luta. 3 minutos de atividade intensa seguidos de 1 minuto de descanso. Inclui "sprawls" (defesa de queda) e movimentação de solo.',
        goal: 'Explosão muscular e condicionamento anaeróbico.',
        equipment: 'Colchonete',
        level: WorkoutLevel.intermediate,
        isVip: true,
      ),
      const Workout(
        id: 'int_3',
        name: 'Boxe de Velocidade',
        duration: '20 min',
        description: 'Foco em combinações rápidas de 4 a 6 golpes. Exige reflexos e retorno rápido à guarda. Use pesos leves nas mãos para aumentar a dificuldade se desejar.',
        goal: 'Velocidade de mãos e resistência de ombros.',
        equipment: 'Pesos de 1kg (opcional)',
        level: WorkoutLevel.intermediate,
        isVip: true,
      ),

      // --- AVANÇADO (VIP) ---
      const Workout(
        id: 'adv_1',
        name: 'Desafio do Campeão',
        duration: '45 min',
        description: 'Treino de alta intensidade (HIIT) simulando uma luta de cinturão. 5 rounds de 5 minutos. Combinações complexas, burpees, saltos e isometria. Apenas para quem já possui bom condicionamento.',
        goal: 'Resistência mental e física extrema.',
        equipment: 'Corda de pular, Colchonete',
        level: WorkoutLevel.advanced,
        isVip: true,
      ),
      const Workout(
        id: 'adv_2',
        name: 'Força e Potência Explosiva',
        duration: '40 min',
        description: 'Uso de pliometria (saltos) combinada com golpes de força total no ar. Foco na rotação do tronco para gerar potência. Descanso ativo.',
        goal: 'Aumentar a força do golpe e a capacidade atlética.',
        equipment: 'Elásticos de resistência (opcional)',
        level: WorkoutLevel.advanced,
        isVip: true,
      ),
      const Workout(
        id: 'adv_3',
        name: 'Tabata Fighter',
        duration: '30 min',
        description: 'Protocolo Tabata (20s execução / 10s descanso) aplicado a golpes de combate. 8 ciclos por exercício. Intensidade máxima durante a execução.',
        goal: 'VO2 Max e queima de gordura pós-treino.',
        equipment: 'Cronômetro (ou app timer)',
        level: WorkoutLevel.advanced,
        isVip: true,
      ),
    ];
  }
}

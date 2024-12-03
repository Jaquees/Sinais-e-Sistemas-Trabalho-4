# Representação de Séries de Fourier e Análise de Frequência

Este repositório contém um script MATLAB que realiza a geração, análise e representação gráfica de sinais utilizando conceitos de séries de Fourier. Ele também inclui a análise de coeficientes espectrais por meio da Transformada Rápida de Fourier (FFT).

## Objetivo

O objetivo deste script é:
- Demonstrar como gerar uma onda dente de serra (`sawtooth`) e analisar suas séries de Fourier.
- Visualizar as componentes espectrais de um sinal no domínio da frequência.
- Praticar a implementação de técnicas de análise de sinais no MATLAB.

## Funcionalidades

1. **Geração de Sinal**:
   - Gera um sinal de onda dente de serra com frequência e amplitude especificadas.

2. **Representação de Séries de Fourier**:
   - Calcula e plota aproximações de uma série de Fourier do sinal original com diferentes ordens (`N`).

3. **Análise de Frequência com FFT**:
   - Aplica a FFT ao sinal e representa graficamente:
     - Amplitudes dos coeficientes espectrais (`|D_n|`).
     - Fases dos coeficientes espectrais (`\angle D_n`).
     - Magnitude (`C_n`) e fase (`\theta_n`) de cada harmônico.

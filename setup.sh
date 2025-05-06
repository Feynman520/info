#!/bin/bash

# 필수 시스템 패키지 설치
echo "Installing system dependencies..."
apt-get update
apt-get install -y zlib1g-dev libjpeg-dev libpng-dev

# 파이썬 패키지 업그레이드
echo "Upgrading pip..."
pip install --upgrade pip wheel setuptools

# Pillow 바이너리 직접 설치
echo "Installing Pillow binary..."
pip install --only-binary=pillow pillow==9.1.0

# 기타 필요한 패키지 설치
echo "Installing other required packages..."
pip install streamlit==1.26.0
pip install pandas==2.0.3

echo "Setup completed successfully!" 
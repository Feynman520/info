#!/bin/bash

# 필수 시스템 패키지 설치
echo "Installing system dependencies..."
apt-get update
apt-get install -y zlib1g-dev libjpeg-dev libpng-dev

# Pillow 바이너리 직접 설치 (소스 빌드 없이)
echo "Installing Pillow binary..."
pip install --upgrade pip
pip install pillow==9.5.0 --no-binary :all: --force-reinstall

# 기타 필요한 패키지 설치
echo "Installing other required packages..."
pip install streamlit==1.26.0
pip install pandas==2.0.3

echo "Setup completed successfully!" 
#!/usr/bin/env bash

# コメントの表示
echo ""
echo "--------------------------------------------------"
echo "Start Installing Library for Laravel."
echo "--------------------------------------------------"
echo ""

## リポジトリの追加 RPM Fusion
dnf -y install --nogpgcheck https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-$(rpm -E %rhel).noarch.rpm
dnf -y install --nogpgcheck https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-$(rpm -E %rhel).noarch.rpm

## インストール Git
dnf -y install git

## インストール Composer
dnf -y install composer

## インストール Node.js
dnf module -y enable nodejs:18
dnf module -y install nodejs:18/common

## インストール Sendmail
dnf -y install sendmail
systemctl start sendmail
systemctl enable sendmail

## インストール FFmpeg
dnf -y install ffmpeg ffmpeg-devel

# コメントの表示
echo ""
echo "--------------------------------------------------"
echo "Complete Installing Library for Laravel."
echo "--------------------------------------------------"
echo ""

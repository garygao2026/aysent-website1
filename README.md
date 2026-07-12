# AYSENT — PDLC Smart Dimming Film Website

## Overview
AYSENT is a modern, high-performance website for PDLC smart dimming film products.
Built with React + TypeScript + Vite + TailwindCSS on the frontend and Express + Supabase on the backend.

## Tech Stack
- **Frontend**: React 18, TypeScript, Vite, TailwindCSS, Radix UI
- **Backend**: Express.js, TypeScript, Supabase
- **Database**: PostgreSQL (Supabase)

## Quick Start

### Prerequisites
- Node.js >= 18
- npm or bun
- Supabase project (for database)

### 1. Install Dependencies
```bash
# Frontend
cd src && npm install

# Backend
cd server && npm install
```

### 2. Environment Setup
Copy `.env.example` to `.env` and fill in your Supabase credentials:
```bash
cp .env.example .env
```

### 3. Run Database Migrations
Run the SQL files in `supabase/tables/` in your Supabase SQL editor.

### 4. Start Development Servers
```bash
# Frontend (port 5173)
cd src && npm run dev

# Backend (port 9000)
cd server && npm run build && node dist/index.js
```

### 5. Build for Production
```bash
cd src && npm run build
```

## Project Structure
```
├── src/                    # Frontend React app
│   ├── components/         # UI components
│   ├── admin/              # Admin dashboard pages
│   ├── pages/              # Public pages
│   └── lib/                # Utilities
├── server/                 # Backend Express API
│   ├── routes/             # API routes
│   └── official-apis/      # DingTalk integration
├── supabase/               # Database schema & migrations
└── public/                 # Static assets
```

## Deployment
### Vercel (Frontend)
1. Connect your GitHub repo to Vercel
2. Set build command: `cd src && npm run build`
3. Set output directory: `src/dist`

### Alibaba Cloud / Self-hosted
1. Build frontend: `cd src && npm run build`
2. Build backend: `cd server && npm run build`
3. Run: `cd server && node dist/index.js`

## License
© 2026 AYSENT. All rights reserved.

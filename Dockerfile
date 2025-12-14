FROM python:3.10-slim-bookworm

# Dont Remove My Credit @AV_BOTz_UPDATE
# This Repo Is By @BOT_OWNER26
# Support Group @AV_SUPPORT_GROUP

WORKDIR /AV_FILE_TO_LINK

# System dependencies
RUN apt-get update && apt-get install -y \
    git \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY . .

# Start bot
CMD ["python", "bot.py"]

.class public final Lcom/google/android/exoplayer2/util/Log;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/Log$LogLevel;
    }
.end annotation


# static fields
.field public static final LOG_LEVEL_ALL:I = 0x0

.field public static final LOG_LEVEL_ERROR:I = 0x3

.field public static final LOG_LEVEL_INFO:I = 0x1

.field public static final LOG_LEVEL_OFF:I = 0x7fffffff

.field public static final LOG_LEVEL_WARNING:I = 0x2

.field private static logLevel:I = 0x0

.field private static logStackTraces:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 189
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Log;->getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n  "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_29
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 89
    sget v0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    if-nez v0, :cond_7

    .line 90
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 99
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 143
    sget v0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_8

    .line 144
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 153
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getLogLevel()I
    .registers 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 62
    sget v0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    return v0
.end method

.method public static getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 172
    :cond_4
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Log;->isCausedByUnknownHostException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "UnknownHostException (no network)"

    return-object p0

    .line 180
    :cond_d
    sget-boolean v0, Lcom/google/android/exoplayer2/util/Log;->logStackTraces:Z

    if-nez v0, :cond_16

    .line 181
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 183
    :cond_16
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\t"

    const-string v1, "    "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 107
    sget v0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    .line 108
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 117
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static isCausedByUnknownHostException(Ljava/lang/Throwable;)Z
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    :goto_0
    if-eqz p0, :cond_d

    .line 199
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 202
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static setLogLevel(I)V
    .registers 1

    .line 71
    sput p0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    return-void
.end method

.method public static setLogStackTraces(Z)V
    .registers 1

    .line 81
    sput-boolean p0, Lcom/google/android/exoplayer2/util/Log;->logStackTraces:Z

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 125
    sget v0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_8

    .line 126
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 135
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

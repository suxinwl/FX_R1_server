.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$Player$PositionInfo$RpbCqv78C7E3v6rJy-_yB5z2-EE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$Player$PositionInfo$RpbCqv78C7E3v6rJy-_yB5z2-EE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$Player$PositionInfo$RpbCqv78C7E3v6rJy-_yB5z2-EE;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/-$$Lambda$Player$PositionInfo$RpbCqv78C7E3v6rJy-_yB5z2-EE;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/-$$Lambda$Player$PositionInfo$RpbCqv78C7E3v6rJy-_yB5z2-EE;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$Player$PositionInfo$RpbCqv78C7E3v6rJy-_yB5z2-EE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .registers 2

    invoke-static {p1}, Lcom/google/android/exoplayer2/Player$PositionInfo;->lambda$RpbCqv78C7E3v6rJy-_yB5z2-EE(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Player$PositionInfo;

    move-result-object p1

    return-object p1
.end method

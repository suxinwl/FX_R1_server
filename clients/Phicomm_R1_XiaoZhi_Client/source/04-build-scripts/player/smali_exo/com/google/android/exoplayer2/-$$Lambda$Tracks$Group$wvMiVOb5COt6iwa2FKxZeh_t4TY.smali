.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$Tracks$Group$wvMiVOb5COt6iwa2FKxZeh_t4TY;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$Tracks$Group$wvMiVOb5COt6iwa2FKxZeh_t4TY;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$Tracks$Group$wvMiVOb5COt6iwa2FKxZeh_t4TY;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/-$$Lambda$Tracks$Group$wvMiVOb5COt6iwa2FKxZeh_t4TY;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/-$$Lambda$Tracks$Group$wvMiVOb5COt6iwa2FKxZeh_t4TY;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$Tracks$Group$wvMiVOb5COt6iwa2FKxZeh_t4TY;

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

    invoke-static {p1}, Lcom/google/android/exoplayer2/Tracks$Group;->lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Tracks$Group;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/google/android/exoplayer2/trackselection/-$$Lambda$QTZwDkKYtDkGLCUFu1PkmuQYFIE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$QTZwDkKYtDkGLCUFu1PkmuQYFIE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$QTZwDkKYtDkGLCUFu1PkmuQYFIE;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$QTZwDkKYtDkGLCUFu1PkmuQYFIE;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$QTZwDkKYtDkGLCUFu1PkmuQYFIE;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$QTZwDkKYtDkGLCUFu1PkmuQYFIE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->compareSelections(Ljava/util/List;Ljava/util/List;)I

    move-result p1

    return p1
.end method

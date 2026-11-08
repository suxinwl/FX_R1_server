.class public final synthetic Lcom/phicomm/speaker/player/-$$Lambda$MsgHandler$VPQ-d-4uC2C5CF4fq379f5dPLHk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/phicomm/speaker/player/-$$Lambda$MsgHandler$VPQ-d-4uC2C5CF4fq379f5dPLHk;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 52

    new-instance v0, Lcom/phicomm/speaker/player/-$$Lambda$MsgHandler$VPQ-d-4uC2C5CF4fq379f5dPLHk;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/-$$Lambda$MsgHandler$VPQ-d-4uC2C5CF4fq379f5dPLHk;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/player/-$$Lambda$MsgHandler$VPQ-d-4uC2C5CF4fq379f5dPLHk;->INSTANCE:Lcom/phicomm/speaker/player/-$$Lambda$MsgHandler$VPQ-d-4uC2C5CF4fq379f5dPLHk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 52

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ۟ۥۦۡ۟(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    invoke-static {}, Lcom/phicomm/speaker/player/tester/ۢۤۡۢ;->ۣۧۤۦ()I

    move-result v0

    if-gez v0, :cond_f

    check-cast p0, Ljava/io/File;

    check-cast p1, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/phicomm/speaker/player/MsgHandler;->lambda$play_local_music$0(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 54

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    check-cast v1, Ljava/io/File;

    check-cast v2, Ljava/io/File;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/-$$Lambda$MsgHandler$VPQ-d-4uC2C5CF4fq379f5dPLHk;->۟ۥۦۡ۟(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.class Lcom/google/android/exoplayer2/decoder/SimpleDecoder$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/decoder/SimpleDecoder;-><init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/decoder/SimpleDecoder;Ljava/lang/String;)V
    .registers 3

    .line 70
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder$1;->this$0:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder$1;->this$0:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    # invokes: Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->run()V
    invoke-static {v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->access$000(Lcom/google/android/exoplayer2/decoder/SimpleDecoder;)V

    return-void
.end method

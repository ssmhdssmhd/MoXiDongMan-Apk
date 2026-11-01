.class final Lcom/google/protobuf/this$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/this;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field public do:I

.field public for:Ljava/lang/Object;

.field public if:J

.field public final new:Lcom/google/protobuf/implements;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/protobuf/implements;->new()Lcom/google/protobuf/implements;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/this$if;->new:Lcom/google/protobuf/implements;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/implements;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/protobuf/this$if;->new:Lcom/google/protobuf/implements;

    return-void
.end method

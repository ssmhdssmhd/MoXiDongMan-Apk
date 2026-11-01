.class final Lcom/google/protobuf/Descriptors$for$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field private final do:Lcom/google/protobuf/Descriptors$goto;

.field private final if:I


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$goto;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$for$do;->do:Lcom/google/protobuf/Descriptors$goto;

    .line 3
    iput p2, p0, Lcom/google/protobuf/Descriptors$for$do;->if:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/Descriptors$for$do;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/protobuf/Descriptors$for$do;

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$for$do;->do:Lcom/google/protobuf/Descriptors$goto;

    iget-object v2, p1, Lcom/google/protobuf/Descriptors$for$do;->do:Lcom/google/protobuf/Descriptors$goto;

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/protobuf/Descriptors$for$do;->if:I

    iget p1, p1, Lcom/google/protobuf/Descriptors$for$do;->if:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$for$do;->do:Lcom/google/protobuf/Descriptors$goto;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xffff

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/protobuf/Descriptors$for$do;->if:I

    add-int/2addr v0, v1

    return v0
.end method

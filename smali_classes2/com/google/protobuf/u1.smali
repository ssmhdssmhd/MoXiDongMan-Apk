.class public final Lcom/google/protobuf/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final case:I = 0x8

.field private static final else:Lcom/google/protobuf/u1;


# instance fields
.field private do:I

.field private for:[Ljava/lang/Object;

.field private if:[I

.field private new:I

.field private try:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/protobuf/u1;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/protobuf/u1;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/protobuf/u1;->else:Lcom/google/protobuf/u1;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    invoke-direct {p0, v2, v1, v0, v3}, Lcom/google/protobuf/u1;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/protobuf/u1;->new:I

    .line 4
    iput p1, p0, Lcom/google/protobuf/u1;->do:I

    .line 5
    iput-object p2, p0, Lcom/google/protobuf/u1;->if:[I

    .line 6
    iput-object p3, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    .line 7
    iput-boolean p4, p0, Lcom/google/protobuf/u1;->try:Z

    return-void
.end method

.method private break(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/u1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->l()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/u1;->this(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-object p0
.end method

.method private static case([II)I
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 1
    aget v2, p0, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static const(Lcom/google/protobuf/u1;Lcom/google/protobuf/u1;)Lcom/google/protobuf/u1;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/u1;->do:I

    iget v1, p1, Lcom/google/protobuf/u1;->do:I

    add-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/u1;->if:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 3
    iget-object v2, p1, Lcom/google/protobuf/u1;->if:[I

    iget v3, p0, Lcom/google/protobuf/u1;->do:I

    iget v4, p1, Lcom/google/protobuf/u1;->do:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v2, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 5
    iget-object v3, p1, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/protobuf/u1;->do:I

    iget p1, p1, Lcom/google/protobuf/u1;->do:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    new-instance p0, Lcom/google/protobuf/u1;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/protobuf/u1;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method private static else([Ljava/lang/Object;I)I
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 1
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static final()Lcom/google/protobuf/u1;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/u1;

    invoke-direct {v0}, Lcom/google/protobuf/u1;-><init>()V

    return-object v0
.end method

.method public static for()Lcom/google/protobuf/u1;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/u1;->else:Lcom/google/protobuf/u1;

    return-object v0
.end method

.method private if()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/u1;->do:I

    iget-object v1, p0, Lcom/google/protobuf/u1;->if:[I

    array-length v2, v1

    if-ne v0, v2, :cond_1

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    shr-int/lit8 v2, v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    .line 2
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/u1;->if:[I

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static import([I[II)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 1
    aget v2, p0, v1

    aget v3, p1, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static return(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/c2;->do(I)I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/google/protobuf/c2;->if(I)I

    move-result p0

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    .line 3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, v0, p0}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/google/protobuf/n;->invalidWireType()Lcom/google/protobuf/n$do;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 5
    :cond_1
    invoke-interface {p2}, Lcom/google/protobuf/Writer;->fieldOrder()Lcom/google/protobuf/Writer$do;

    move-result-object p0

    sget-object v1, Lcom/google/protobuf/Writer$do;->ASCENDING:Lcom/google/protobuf/Writer$do;

    if-ne p0, v1, :cond_2

    .line 6
    invoke-interface {p2, v0}, Lcom/google/protobuf/Writer;->writeStartGroup(I)V

    .line 7
    check-cast p1, Lcom/google/protobuf/u1;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/u1;->switch(Lcom/google/protobuf/Writer;)V

    .line 8
    invoke-interface {p2, v0}, Lcom/google/protobuf/Writer;->writeEndGroup(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {p2, v0}, Lcom/google/protobuf/Writer;->writeEndGroup(I)V

    .line 10
    check-cast p1, Lcom/google/protobuf/u1;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/u1;->switch(Lcom/google/protobuf/Writer;)V

    .line 11
    invoke-interface {p2, v0}, Lcom/google/protobuf/Writer;->writeStartGroup(I)V

    goto :goto_0

    .line 12
    :cond_3
    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-interface {p2, v0, p1}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 13
    :cond_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_0

    .line 14
    :cond_5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    :goto_0
    return-void
.end method

.method private static super([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 1
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public catch(ILcom/google/protobuf/ByteString;)Lcom/google/protobuf/u1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/u1;->do()V

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-static {p1, v0}, Lcom/google/protobuf/c2;->for(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u1;->while(ILjava/lang/Object;)V

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public class(II)Lcom/google/protobuf/u1;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/u1;->do()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/google/protobuf/c2;->for(II)I

    move-result p1

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u1;->while(ILjava/lang/Object;)V

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public do()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/u1;->try:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Lcom/google/protobuf/u1;

    if-nez v2, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lcom/google/protobuf/u1;

    .line 3
    iget v2, p0, Lcom/google/protobuf/u1;->do:I

    iget v3, p1, Lcom/google/protobuf/u1;->do:I

    if-ne v2, v3, :cond_4

    iget-object v3, p0, Lcom/google/protobuf/u1;->if:[I

    iget-object v4, p1, Lcom/google/protobuf/u1;->if:[I

    .line 4
    invoke-static {v3, v4, v2}, Lcom/google/protobuf/u1;->import([I[II)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/protobuf/u1;->do:I

    .line 5
    invoke-static {v2, p1, v3}, Lcom/google/protobuf/u1;->super([Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public goto()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/protobuf/u1;->try:Z

    return-void
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/u1;->do:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v2, p0, Lcom/google/protobuf/u1;->if:[I

    invoke-static {v2, v0}, Lcom/google/protobuf/u1;->case([II)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/protobuf/u1;->do:I

    invoke-static {v0, v2}, Lcom/google/protobuf/u1;->else([Ljava/lang/Object;I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public native(Lcom/google/protobuf/native;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/google/protobuf/u1;->do:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/u1;->if:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/google/protobuf/c2;->do(I)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/native;->s0(ILcom/google/protobuf/ByteString;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public new()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/u1;->new:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/google/protobuf/u1;->do:I

    if-ge v0, v2, :cond_6

    .line 3
    iget-object v2, p0, Lcom/google/protobuf/u1;->if:[I

    aget v2, v2, v0

    .line 4
    invoke-static {v2}, Lcom/google/protobuf/c2;->do(I)I

    move-result v3

    .line 5
    invoke-static {v2}, Lcom/google/protobuf/c2;->if(I)I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    .line 6
    iget-object v2, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/native;->public(II)I

    move-result v2

    goto :goto_1

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/google/protobuf/n;->invalidWireType()Lcom/google/protobuf/n$do;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_2
    invoke-static {v3}, Lcom/google/protobuf/native;->r(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/protobuf/u1;

    .line 9
    invoke-virtual {v3}, Lcom/google/protobuf/u1;->new()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 10
    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-static {v3, v2}, Lcom/google/protobuf/native;->final(ILcom/google/protobuf/ByteString;)I

    move-result v2

    goto :goto_1

    .line 11
    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/native;->static(IJ)I

    move-result v2

    goto :goto_1

    .line 12
    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/native;->u(IJ)I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_6
    iput v1, p0, Lcom/google/protobuf/u1;->new:I

    return v1
.end method

.method public public(Lcom/google/protobuf/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/Writer;->fieldOrder()Lcom/google/protobuf/Writer$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Writer$do;->DESCENDING:Lcom/google/protobuf/Writer$do;

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/google/protobuf/u1;->do:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/u1;->if:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/google/protobuf/c2;->do(I)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_1
    iget v1, p0, Lcom/google/protobuf/u1;->do:I

    if-ge v0, v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/google/protobuf/u1;->if:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/google/protobuf/c2;->do(I)I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static(Lcom/google/protobuf/native;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/google/protobuf/u1;->do:I

    if-ge v0, v1, :cond_5

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/u1;->if:[I

    aget v1, v1, v0

    .line 3
    invoke-static {v1}, Lcom/google/protobuf/c2;->do(I)I

    move-result v2

    .line 4
    invoke-static {v1}, Lcom/google/protobuf/c2;->if(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/native;->writeFixed32(II)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/protobuf/n;->invalidWireType()Lcom/google/protobuf/n$do;

    move-result-object p1

    throw p1

    .line 7
    :cond_1
    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/native;->A0(II)V

    .line 8
    iget-object v1, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/google/protobuf/u1;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/u1;->static(Lcom/google/protobuf/native;)V

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/native;->A0(II)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/native;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/native;->writeFixed64(IJ)V

    goto :goto_1

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/native;->writeUInt64(IJ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public switch(Lcom/google/protobuf/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/protobuf/u1;->do:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/Writer;->fieldOrder()Lcom/google/protobuf/Writer$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Writer$do;->ASCENDING:Lcom/google/protobuf/Writer$do;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Lcom/google/protobuf/u1;->do:I

    if-ge v0, v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/u1;->if:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/protobuf/u1;->return(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lcom/google/protobuf/u1;->do:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 6
    iget-object v1, p0, Lcom/google/protobuf/u1;->if:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/protobuf/u1;->return(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public this(ILcom/google/protobuf/CodedInputStream;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/u1;->do()V

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/c2;->do(I)I

    move-result v0

    .line 3
    invoke-static {p1}, Lcom/google/protobuf/c2;->if(I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->finally()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u1;->while(ILjava/lang/Object;)V

    return v2

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/protobuf/n;->invalidWireType()Lcom/google/protobuf/n$do;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 6
    :cond_2
    new-instance v1, Lcom/google/protobuf/u1;

    invoke-direct {v1}, Lcom/google/protobuf/u1;-><init>()V

    .line 7
    invoke-direct {v1, p2}, Lcom/google/protobuf/u1;->break(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/u1;

    .line 8
    invoke-static {v0, v4}, Lcom/google/protobuf/c2;->for(II)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedInputStream;->do(I)V

    .line 9
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/u1;->while(ILjava/lang/Object;)V

    return v2

    .line 10
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->throws()Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u1;->while(ILjava/lang/Object;)V

    return v2

    .line 11
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->package()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u1;->while(ILjava/lang/Object;)V

    return v2

    .line 12
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->volatile()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u1;->while(ILjava/lang/Object;)V

    return v2
.end method

.method public final throw(Ljava/lang/StringBuilder;I)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/google/protobuf/u1;->do:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/u1;->if:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/google/protobuf/c2;->do(I)I

    move-result v1

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lcom/google/protobuf/d0;->for(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public try()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/u1;->new:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/google/protobuf/u1;->do:I

    if-ge v0, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/google/protobuf/u1;->if:[I

    aget v2, v2, v0

    .line 4
    invoke-static {v2}, Lcom/google/protobuf/c2;->do(I)I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 6
    invoke-static {v2, v3}, Lcom/google/protobuf/native;->e(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iput v1, p0, Lcom/google/protobuf/u1;->new:I

    return v1
.end method

.method public while(ILjava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/u1;->do()V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/u1;->if()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/u1;->if:[I

    iget v1, p0, Lcom/google/protobuf/u1;->do:I

    aput p1, v0, v1

    .line 4
    iget-object p1, p0, Lcom/google/protobuf/u1;->for:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 5
    iput v1, p0, Lcom/google/protobuf/u1;->do:I

    return-void
.end method

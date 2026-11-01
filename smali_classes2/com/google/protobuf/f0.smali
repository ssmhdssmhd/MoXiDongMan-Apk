.class final Lcom/google/protobuf/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Schema;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final do:Lcom/google/protobuf/MessageLite;

.field private final for:Z

.field private final if:Lcom/google/protobuf/s1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/s1<",
            "**>;"
        }
    .end annotation
.end field

.field private final new:Lcom/google/protobuf/instanceof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/instanceof<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/protobuf/s1;Lcom/google/protobuf/instanceof;Lcom/google/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/s1<",
            "**>;",
            "Lcom/google/protobuf/instanceof<",
            "*>;",
            "Lcom/google/protobuf/MessageLite;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/f0;->if:Lcom/google/protobuf/s1;

    .line 3
    invoke-virtual {p2, p3}, Lcom/google/protobuf/instanceof;->try(Lcom/google/protobuf/MessageLite;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/protobuf/f0;->for:Z

    .line 4
    iput-object p2, p0, Lcom/google/protobuf/f0;->new:Lcom/google/protobuf/instanceof;

    .line 5
    iput-object p3, p0, Lcom/google/protobuf/f0;->do:Lcom/google/protobuf/MessageLite;

    return-void
.end method

.method private do(Lcom/google/protobuf/s1;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/s1<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/protobuf/s1;->else(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/protobuf/s1;->this(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public static for(Lcom/google/protobuf/s1;Lcom/google/protobuf/instanceof;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/s1<",
            "**>;",
            "Lcom/google/protobuf/instanceof<",
            "*>;",
            "Lcom/google/protobuf/MessageLite;",
            ")",
            "Lcom/google/protobuf/f0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/f0;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/f0;-><init>(Lcom/google/protobuf/s1;Lcom/google/protobuf/instanceof;Lcom/google/protobuf/MessageLite;)V

    return-object v0
.end method

.method private if(Lcom/google/protobuf/s1;Lcom/google/protobuf/instanceof;Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/implements;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/google/protobuf/s1<",
            "TUT;TUB;>;",
            "Lcom/google/protobuf/instanceof<",
            "TET;>;TT;",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/implements;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Lcom/google/protobuf/s1;->case(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 2
    invoke-virtual {p2, p3}, Lcom/google/protobuf/instanceof;->new(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v8

    .line 3
    :goto_0
    :try_start_0
    invoke-interface {p4}, Lcom/google/protobuf/Reader;->getFieldNumber()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/s1;->super(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p2

    move-object v4, v8

    move-object v5, p1

    move-object v6, v7

    .line 5
    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/f0;->new(Lcom/google/protobuf/Reader;Lcom/google/protobuf/implements;Lcom/google/protobuf/instanceof;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/s1;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/s1;->super(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/s1;->super(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method private new(Lcom/google/protobuf/Reader;Lcom/google/protobuf/implements;Lcom/google/protobuf/instanceof;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/s1;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/implements;",
            "Lcom/google/protobuf/instanceof<",
            "TET;>;",
            "Lcom/google/protobuf/FieldSet<",
            "TET;>;",
            "Lcom/google/protobuf/s1<",
            "TUT;TUB;>;TUB;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->getTag()I

    move-result v0

    .line 2
    sget v1, Lcom/google/protobuf/c2;->while:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/c2;->if(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/f0;->do:Lcom/google/protobuf/MessageLite;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/c2;->do(I)I

    move-result v0

    .line 6
    invoke-virtual {p3, p2, v1, v0}, Lcom/google/protobuf/instanceof;->if(Lcom/google/protobuf/implements;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p3, p1, v0, p2, p4}, Lcom/google/protobuf/instanceof;->goto(Lcom/google/protobuf/Reader;Ljava/lang/Object;Lcom/google/protobuf/implements;Lcom/google/protobuf/FieldSet;)V

    return v2

    .line 8
    :cond_0
    invoke-virtual {p5, p6, p1}, Lcom/google/protobuf/s1;->const(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z

    move-result p1

    return p1

    .line 9
    :cond_1
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->skipField()Z

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    .line 10
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->getFieldNumber()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->getTag()I

    move-result v4

    .line 12
    sget v5, Lcom/google/protobuf/c2;->native:I

    if-ne v4, v5, :cond_5

    .line 13
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readUInt32()I

    move-result v0

    .line 14
    iget-object v1, p0, Lcom/google/protobuf/f0;->do:Lcom/google/protobuf/MessageLite;

    .line 15
    invoke-virtual {p3, p2, v1, v0}, Lcom/google/protobuf/instanceof;->if(Lcom/google/protobuf/implements;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 16
    :cond_5
    sget v5, Lcom/google/protobuf/c2;->public:I

    if-ne v4, v5, :cond_7

    if-eqz v1, :cond_6

    .line 17
    invoke-virtual {p3, p1, v1, p2, p4}, Lcom/google/protobuf/instanceof;->goto(Lcom/google/protobuf/Reader;Ljava/lang/Object;Lcom/google/protobuf/implements;Lcom/google/protobuf/FieldSet;)V

    goto :goto_0

    .line 18
    :cond_6
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    goto :goto_0

    .line 19
    :cond_7
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->skipField()Z

    move-result v4

    if-nez v4, :cond_3

    .line 20
    :goto_1
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->getTag()I

    move-result p1

    sget v4, Lcom/google/protobuf/c2;->import:I

    if-ne p1, v4, :cond_a

    if-eqz v3, :cond_9

    if-eqz v1, :cond_8

    .line 21
    invoke-virtual {p3, v3, v1, p2, p4}, Lcom/google/protobuf/instanceof;->this(Lcom/google/protobuf/ByteString;Ljava/lang/Object;Lcom/google/protobuf/implements;Lcom/google/protobuf/FieldSet;)V

    goto :goto_2

    .line 22
    :cond_8
    invoke-virtual {p5, p6, v0, v3}, Lcom/google/protobuf/s1;->new(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    :cond_9
    :goto_2
    return v2

    .line 23
    :cond_a
    invoke-static {}, Lcom/google/protobuf/n;->invalidEndTag()Lcom/google/protobuf/n;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private try(Lcom/google/protobuf/s1;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/s1<",
            "TUT;TUB;>;TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/protobuf/s1;->else(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/s1;->native(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/f0;->if:Lcom/google/protobuf/s1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/s1;->else(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/f0;->if:Lcom/google/protobuf/s1;

    invoke-virtual {v1, p2}, Lcom/google/protobuf/s1;->else(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/f0;->for:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/f0;->new:Lcom/google/protobuf/instanceof;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/instanceof;->for(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/f0;->new:Lcom/google/protobuf/instanceof;

    invoke-virtual {v0, p2}, Lcom/google/protobuf/instanceof;->for(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getSerializedSize(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/f0;->if:Lcom/google/protobuf/s1;

    invoke-direct {p0, v0, p1}, Lcom/google/protobuf/f0;->do(Lcom/google/protobuf/s1;Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2
    iget-boolean v1, p0, Lcom/google/protobuf/f0;->for:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/f0;->new:Lcom/google/protobuf/instanceof;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/instanceof;->for(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->static()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/f0;->if:Lcom/google/protobuf/s1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/s1;->else(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/google/protobuf/f0;->for:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/f0;->new:Lcom/google/protobuf/instanceof;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/instanceof;->for(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/f0;->new:Lcom/google/protobuf/instanceof;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/instanceof;->for(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->continue()Z

    move-result p1

    return p1
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/f0;->if:Lcom/google/protobuf/s1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/s1;->break(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/f0;->new:Lcom/google/protobuf/instanceof;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/instanceof;->case(Ljava/lang/Object;)V

    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/implements;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/implements;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v1, p0, Lcom/google/protobuf/f0;->if:Lcom/google/protobuf/s1;

    iget-object v2, p0, Lcom/google/protobuf/f0;->new:Lcom/google/protobuf/instanceof;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/f0;->if(Lcom/google/protobuf/s1;Lcom/google/protobuf/instanceof;Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/implements;)V

    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/f0;->if:Lcom/google/protobuf/s1;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/y0;->transient(Lcom/google/protobuf/s1;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/protobuf/f0;->for:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/f0;->new:Lcom/google/protobuf/instanceof;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/y0;->interface(Lcom/google/protobuf/instanceof;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;[BIILcom/google/protobuf/this$if;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/protobuf/this$if;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite;->do:Lcom/google/protobuf/u1;

    .line 5
    invoke-static {}, Lcom/google/protobuf/u1;->for()Lcom/google/protobuf/u1;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 6
    invoke-static {}, Lcom/google/protobuf/u1;->final()Lcom/google/protobuf/u1;

    move-result-object v1

    .line 7
    iput-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite;->do:Lcom/google/protobuf/u1;

    .line 8
    :cond_0
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$try;

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$try;->g()Lcom/google/protobuf/FieldSet;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-ge p3, p4, :cond_b

    .line 10
    invoke-static {p2, p3, p5}, Lcom/google/protobuf/this;->protected([BILcom/google/protobuf/this$if;)I

    move-result v4

    .line 11
    iget p3, p5, Lcom/google/protobuf/this$if;->do:I

    .line 12
    sget v3, Lcom/google/protobuf/c2;->while:I

    const/4 v5, 0x2

    if-eq p3, v3, :cond_3

    .line 13
    invoke-static {p3}, Lcom/google/protobuf/c2;->if(I)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 14
    iget-object v2, p0, Lcom/google/protobuf/f0;->new:Lcom/google/protobuf/instanceof;

    iget-object v3, p5, Lcom/google/protobuf/this$if;->new:Lcom/google/protobuf/implements;

    iget-object v5, p0, Lcom/google/protobuf/f0;->do:Lcom/google/protobuf/MessageLite;

    .line 15
    invoke-static {p3}, Lcom/google/protobuf/c2;->do(I)I

    move-result v6

    .line 16
    invoke-virtual {v2, v3, v5, v6}, Lcom/google/protobuf/instanceof;->if(Lcom/google/protobuf/implements;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/GeneratedMessageLite$else;

    if-eqz v8, :cond_1

    .line 17
    invoke-static {}, Lcom/google/protobuf/q0;->do()Lcom/google/protobuf/q0;

    move-result-object p3

    .line 18
    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite$else;->for()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 19
    invoke-virtual {p3, v2}, Lcom/google/protobuf/q0;->this(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object p3

    .line 20
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/protobuf/this;->throw(Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/this$if;)I

    move-result p3

    .line 21
    iget-object v2, v8, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    iget-object v3, p5, Lcom/google/protobuf/this$if;->for:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/FieldSet;->b(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 22
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/this;->volatile(I[BIILcom/google/protobuf/u1;Lcom/google/protobuf/this$if;)I

    move-result p3

    :goto_1
    move-object v2, v8

    goto :goto_0

    .line 23
    :cond_2
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/protobuf/this;->a(I[BIILcom/google/protobuf/this$if;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v3, v0

    :goto_2
    if-ge v4, p4, :cond_9

    .line 24
    invoke-static {p2, v4, p5}, Lcom/google/protobuf/this;->protected([BILcom/google/protobuf/this$if;)I

    move-result v4

    .line 25
    iget v6, p5, Lcom/google/protobuf/this$if;->do:I

    .line 26
    invoke-static {v6}, Lcom/google/protobuf/c2;->do(I)I

    move-result v7

    .line 27
    invoke-static {v6}, Lcom/google/protobuf/c2;->if(I)I

    move-result v8

    if-eq v7, v5, :cond_6

    const/4 v9, 0x3

    if-eq v7, v9, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    .line 28
    invoke-static {}, Lcom/google/protobuf/q0;->do()Lcom/google/protobuf/q0;

    move-result-object v6

    .line 29
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$else;->for()Lcom/google/protobuf/MessageLite;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 30
    invoke-virtual {v6, v7}, Lcom/google/protobuf/q0;->this(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v6

    .line 31
    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/protobuf/this;->throw(Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/this$if;)I

    move-result v4

    .line 32
    iget-object v6, v2, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    iget-object v7, p5, Lcom/google/protobuf/this$if;->for:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lcom/google/protobuf/FieldSet;->b(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-ne v8, v5, :cond_7

    .line 33
    invoke-static {p2, v4, p5}, Lcom/google/protobuf/this;->if([BILcom/google/protobuf/this$if;)I

    move-result v4

    .line 34
    iget-object v3, p5, Lcom/google/protobuf/this$if;->for:Ljava/lang/Object;

    check-cast v3, Lcom/google/protobuf/ByteString;

    goto :goto_2

    :cond_6
    if-nez v8, :cond_7

    .line 35
    invoke-static {p2, v4, p5}, Lcom/google/protobuf/this;->protected([BILcom/google/protobuf/this$if;)I

    move-result v4

    .line 36
    iget p3, p5, Lcom/google/protobuf/this$if;->do:I

    .line 37
    iget-object v2, p0, Lcom/google/protobuf/f0;->new:Lcom/google/protobuf/instanceof;

    iget-object v6, p5, Lcom/google/protobuf/this$if;->new:Lcom/google/protobuf/implements;

    iget-object v7, p0, Lcom/google/protobuf/f0;->do:Lcom/google/protobuf/MessageLite;

    .line 38
    invoke-virtual {v2, v6, v7, p3}, Lcom/google/protobuf/instanceof;->if(Lcom/google/protobuf/implements;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/GeneratedMessageLite$else;

    goto :goto_2

    .line 39
    :cond_7
    :goto_3
    sget v7, Lcom/google/protobuf/c2;->import:I

    if-ne v6, v7, :cond_8

    goto :goto_4

    .line 40
    :cond_8
    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/protobuf/this;->a(I[BIILcom/google/protobuf/this$if;)I

    move-result v4

    goto :goto_2

    :cond_9
    :goto_4
    if-eqz v3, :cond_a

    .line 41
    invoke-static {p3, v5}, Lcom/google/protobuf/c2;->for(II)I

    move-result p3

    .line 42
    invoke-virtual {v1, p3, v3}, Lcom/google/protobuf/u1;->while(ILjava/lang/Object;)V

    :cond_a
    move p3, v4

    goto/16 :goto_0

    :cond_b
    if-ne p3, p4, :cond_c

    return-void

    .line 43
    :cond_c
    invoke-static {}, Lcom/google/protobuf/n;->parseFailure()Lcom/google/protobuf/n;

    move-result-object p1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/f0;->do:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->buildPartial()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/f0;->new:Lcom/google/protobuf/instanceof;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/instanceof;->for(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->interface()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 6
    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/protobuf/c2$for;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/c2$for;->MESSAGE:Lcom/google/protobuf/c2$for;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    instance-of v3, v1, Lcom/google/protobuf/q$if;

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    check-cast v1, Lcom/google/protobuf/q$if;

    invoke-virtual {v1}, Lcom/google/protobuf/q$if;->do()Lcom/google/protobuf/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/r;->final()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 9
    invoke-interface {p2, v2, v1}, Lcom/google/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/f0;->if:Lcom/google/protobuf/s1;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/f0;->try(Lcom/google/protobuf/s1;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method

.class public Lcom/google/protobuf/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/y$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final new:I = 0x1

.field private static final try:I = 0x2


# instance fields
.field private final do:Lcom/google/protobuf/y$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/y$if<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final for:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final if:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/protobuf/c2$if;Ljava/lang/Object;Lcom/google/protobuf/c2$if;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/c2$if;",
            "TK;",
            "Lcom/google/protobuf/c2$if;",
            "TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/protobuf/y$if;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/protobuf/y$if;-><init>(Lcom/google/protobuf/c2$if;Ljava/lang/Object;Lcom/google/protobuf/c2$if;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/protobuf/y;->do:Lcom/google/protobuf/y$if;

    .line 3
    iput-object p2, p0, Lcom/google/protobuf/y;->if:Ljava/lang/Object;

    .line 4
    iput-object p4, p0, Lcom/google/protobuf/y;->for:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/y$if;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/y$if<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/protobuf/y;->do:Lcom/google/protobuf/y$if;

    .line 7
    iput-object p2, p0, Lcom/google/protobuf/y;->if:Ljava/lang/Object;

    .line 8
    iput-object p3, p0, Lcom/google/protobuf/y;->for:Ljava/lang/Object;

    return-void
.end method

.method public static case(Lcom/google/protobuf/c2$if;Ljava/lang/Object;Lcom/google/protobuf/c2$if;Ljava/lang/Object;)Lcom/google/protobuf/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/c2$if;",
            "TK;",
            "Lcom/google/protobuf/c2$if;",
            "TV;)",
            "Lcom/google/protobuf/y<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/y;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/protobuf/y;-><init>(Lcom/google/protobuf/c2$if;Ljava/lang/Object;Lcom/google/protobuf/c2$if;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static class(Lcom/google/protobuf/native;Lcom/google/protobuf/y$if;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/native;",
            "Lcom/google/protobuf/y$if<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/protobuf/y$if;->do:Lcom/google/protobuf/c2$if;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/google/protobuf/FieldSet;->e(Lcom/google/protobuf/native;Lcom/google/protobuf/c2$if;ILjava/lang/Object;)V

    .line 2
    iget-object p1, p1, Lcom/google/protobuf/y$if;->for:Lcom/google/protobuf/c2$if;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/FieldSet;->e(Lcom/google/protobuf/native;Lcom/google/protobuf/c2$if;ILjava/lang/Object;)V

    return-void
.end method

.method public static goto(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/y$if;Lcom/google/protobuf/implements;)Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/y$if<",
            "TK;TV;>;",
            "Lcom/google/protobuf/implements;",
            ")",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/protobuf/y$if;->if:Ljava/lang/Object;

    .line 2
    iget-object v1, p1, Lcom/google/protobuf/y$if;->new:Ljava/lang/Object;

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->l()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    .line 4
    iget-object v4, p1, Lcom/google/protobuf/y$if;->do:Lcom/google/protobuf/c2$if;

    invoke-virtual {v4}, Lcom/google/protobuf/c2$if;->getWireType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/c2;->for(II)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 5
    iget-object v2, p1, Lcom/google/protobuf/y$if;->do:Lcom/google/protobuf/c2$if;

    invoke-static {p0, p2, v2, v0}, Lcom/google/protobuf/y;->this(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/google/protobuf/c2$if;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    .line 6
    iget-object v4, p1, Lcom/google/protobuf/y$if;->for:Lcom/google/protobuf/c2$if;

    invoke-virtual {v4}, Lcom/google/protobuf/c2$if;->getWireType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/c2;->for(II)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 7
    iget-object v2, p1, Lcom/google/protobuf/y$if;->for:Lcom/google/protobuf/c2$if;

    invoke-static {p0, p2, v2, v1}, Lcom/google/protobuf/y;->this(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/google/protobuf/c2$if;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStream;->t(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    :goto_1
    new-instance p0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {p0, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static if(Lcom/google/protobuf/y$if;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/y$if<",
            "TK;TV;>;TK;TV;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/y$if;->do:Lcom/google/protobuf/c2$if;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/FieldSet;->super(Lcom/google/protobuf/c2$if;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lcom/google/protobuf/y$if;->for:Lcom/google/protobuf/c2$if;

    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0, p2}, Lcom/google/protobuf/FieldSet;->super(Lcom/google/protobuf/c2$if;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static this(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/google/protobuf/c2$if;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/implements;",
            "Lcom/google/protobuf/c2$if;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/y$do;->do:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    .line 2
    invoke-static {p0, p2, v1}, Lcom/google/protobuf/FieldSet;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/c2$if;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Groups are not allowed in maps."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->extends()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    check-cast p3, Lcom/google/protobuf/MessageLite;

    invoke-interface {p3}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object p2

    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/google/protobuf/CodedInputStream;->protected(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/implements;)V

    .line 7
    invoke-interface {p2}, Lcom/google/protobuf/MessageLite$Builder;->buildPartial()Lcom/google/protobuf/MessageLite;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public break(Lcom/google/protobuf/z;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/z<",
            "TK;TV;>;",
            "Lcom/google/protobuf/CodedInputStream;",
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
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->a()I

    move-result v0

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedInputStream;->public(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/y;->do:Lcom/google/protobuf/y$if;

    iget-object v2, v1, Lcom/google/protobuf/y$if;->if:Ljava/lang/Object;

    .line 4
    iget-object v1, v1, Lcom/google/protobuf/y$if;->new:Ljava/lang/Object;

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->l()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    .line 6
    iget-object v5, p0, Lcom/google/protobuf/y;->do:Lcom/google/protobuf/y$if;

    iget-object v5, v5, Lcom/google/protobuf/y$if;->do:Lcom/google/protobuf/c2$if;

    invoke-virtual {v5}, Lcom/google/protobuf/c2$if;->getWireType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/c2;->for(II)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 7
    iget-object v3, p0, Lcom/google/protobuf/y;->do:Lcom/google/protobuf/y$if;

    iget-object v3, v3, Lcom/google/protobuf/y$if;->do:Lcom/google/protobuf/c2$if;

    invoke-static {p2, p3, v3, v2}, Lcom/google/protobuf/y;->this(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/google/protobuf/c2$if;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    .line 8
    iget-object v5, p0, Lcom/google/protobuf/y;->do:Lcom/google/protobuf/y$if;

    iget-object v5, v5, Lcom/google/protobuf/y$if;->for:Lcom/google/protobuf/c2$if;

    invoke-virtual {v5}, Lcom/google/protobuf/c2$if;->getWireType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/c2;->for(II)I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 9
    iget-object v3, p0, Lcom/google/protobuf/y;->do:Lcom/google/protobuf/y$if;

    iget-object v3, v3, Lcom/google/protobuf/y$if;->for:Lcom/google/protobuf/c2$if;

    invoke-static {p2, p3, v3, v1}, Lcom/google/protobuf/y;->this(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/google/protobuf/c2$if;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p2, v3}, Lcom/google/protobuf/CodedInputStream;->t(I)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    const/4 p3, 0x0

    .line 11
    invoke-virtual {p2, p3}, Lcom/google/protobuf/CodedInputStream;->do(I)V

    .line 12
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedInputStream;->native(I)V

    .line 13
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/z;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public catch(Lcom/google/protobuf/native;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/native;",
            "ITK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p1, p2, v0}, Lcom/google/protobuf/native;->A0(II)V

    .line 2
    iget-object p2, p0, Lcom/google/protobuf/y;->do:Lcom/google/protobuf/y$if;

    invoke-static {p2, p3, p4}, Lcom/google/protobuf/y;->if(Lcom/google/protobuf/y$if;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/native;->B0(I)V

    .line 3
    iget-object p2, p0, Lcom/google/protobuf/y;->do:Lcom/google/protobuf/y$if;

    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/y;->class(Lcom/google/protobuf/native;Lcom/google/protobuf/y$if;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public do(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/native;->r(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/protobuf/y;->do:Lcom/google/protobuf/y$if;

    .line 2
    invoke-static {v0, p2, p3}, Lcom/google/protobuf/y;->if(Lcom/google/protobuf/y$if;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    .line 3
    invoke-static {p2}, Lcom/google/protobuf/native;->implements(I)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method public else(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/implements;",
            ")",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->newCodedInput()Lcom/google/protobuf/CodedInputStream;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/y;->do:Lcom/google/protobuf/y$if;

    invoke-static {p1, v0, p2}, Lcom/google/protobuf/y;->goto(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/y$if;Lcom/google/protobuf/implements;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public for()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/y;->if:Ljava/lang/Object;

    return-object v0
.end method

.method public new()Lcom/google/protobuf/y$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/y$if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/y;->do:Lcom/google/protobuf/y$if;

    return-object v0
.end method

.method public try()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/y;->for:Ljava/lang/Object;

    return-object v0
.end method

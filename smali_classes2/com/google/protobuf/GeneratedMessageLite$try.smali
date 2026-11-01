.class public abstract Lcom/google/protobuf/GeneratedMessageLite$try;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMessageLite$try$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/GeneratedMessageLite$try<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/protobuf/GeneratedMessageLite$new<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public new:Lcom/google/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/GeneratedMessageLite$case;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/protobuf/FieldSet;->native()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    return-void
.end method

.method private f(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/GeneratedMessageLite$else;Lcom/google/protobuf/implements;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/GeneratedMessageLite$else<",
            "**>;",
            "Lcom/google/protobuf/implements;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-static {p4, v0}, Lcom/google/protobuf/c2;->for(II)I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move v6, p4

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$try;->m(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/google/protobuf/GeneratedMessageLite$else;II)Z

    return-void
.end method

.method private i(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;Lcom/google/protobuf/GeneratedMessageLite$else;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/implements;",
            "Lcom/google/protobuf/GeneratedMessageLite$else<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/FieldSet;->return(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$else;->for()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    .line 4
    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite$Builder;

    .line 5
    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$try;->g()Lcom/google/protobuf/FieldSet;

    move-result-object p2

    iget-object v0, p3, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    .line 7
    invoke-virtual {p3, p1}, Lcom/google/protobuf/GeneratedMessageLite$else;->break(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/protobuf/FieldSet;->b(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-void
.end method

.method private j(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/google/protobuf/MessageLite;",
            ">(TMessageType;",
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

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->l()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    sget v5, Lcom/google/protobuf/c2;->native:I

    if-ne v4, v5, :cond_2

    .line 3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->m()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/implements;->for(Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$else;

    move-result-object v3

    goto :goto_0

    .line 5
    :cond_2
    sget v5, Lcom/google/protobuf/c2;->public:I

    if-ne v4, v5, :cond_4

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 6
    invoke-direct {p0, p2, v3, p3, v1}, Lcom/google/protobuf/GeneratedMessageLite$try;->f(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/GeneratedMessageLite$else;Lcom/google/protobuf/implements;I)V

    move-object v2, v0

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->throws()Lcom/google/protobuf/ByteString;

    move-result-object v2

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p2, v4}, Lcom/google/protobuf/CodedInputStream;->t(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 9
    :goto_1
    sget p1, Lcom/google/protobuf/c2;->import:I

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->do(I)V

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    if-eqz v3, :cond_5

    .line 10
    invoke-direct {p0, v2, p3, v3}, Lcom/google/protobuf/GeneratedMessageLite$try;->i(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;Lcom/google/protobuf/GeneratedMessageLite$else;)V

    goto :goto_2

    .line 11
    :cond_5
    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite;->throw(ILcom/google/protobuf/ByteString;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private m(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/google/protobuf/GeneratedMessageLite$else;II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/implements;",
            "Lcom/google/protobuf/GeneratedMessageLite$else<",
            "**>;II)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p4}, Lcom/google/protobuf/c2;->if(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    goto :goto_1

    .line 2
    :cond_1
    iget-object v3, p3, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    .line 3
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$case;->getLiteType()Lcom/google/protobuf/c2$if;

    move-result-object v3

    .line 4
    invoke-static {v3, v1}, Lcom/google/protobuf/FieldSet;->finally(Lcom/google/protobuf/c2$if;Z)I

    move-result v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_2
    iget-object v3, p3, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    iget-boolean v4, v3, Lcom/google/protobuf/GeneratedMessageLite$case;->new:Z

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/google/protobuf/GeneratedMessageLite$case;->for:Lcom/google/protobuf/c2$if;

    .line 6
    invoke-virtual {v3}, Lcom/google/protobuf/c2$if;->isPackable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p3, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    .line 7
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$case;->getLiteType()Lcom/google/protobuf/c2$if;

    move-result-object v3

    .line 8
    invoke-static {v3, v2}, Lcom/google/protobuf/FieldSet;->finally(Lcom/google/protobuf/c2$if;Z)I

    move-result v3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0, p4, p1}, Lcom/google/protobuf/GeneratedMessageLite;->c(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p1

    return p1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$try;->g()Lcom/google/protobuf/FieldSet;

    if-eqz v3, :cond_7

    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->a()I

    move-result p2

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/protobuf/CodedInputStream;->public(I)I

    move-result p2

    .line 13
    iget-object p4, p3, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    invoke-virtual {p4}, Lcom/google/protobuf/GeneratedMessageLite$case;->getLiteType()Lcom/google/protobuf/c2$if;

    move-result-object p4

    sget-object p5, Lcom/google/protobuf/c2$if;->ENUM:Lcom/google/protobuf/c2$if;

    if-ne p4, p5, :cond_5

    .line 14
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->case()I

    move-result p4

    if-lez p4, :cond_6

    .line 15
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->extends()I

    move-result p4

    .line 16
    iget-object p5, p3, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$case;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object p5

    invoke-interface {p5, p4}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object p4

    if-nez p4, :cond_4

    return v2

    .line 17
    :cond_4
    iget-object p5, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    iget-object v0, p3, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    .line 18
    invoke-virtual {p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$else;->break(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .line 19
    invoke-virtual {p5, v0, p4}, Lcom/google/protobuf/FieldSet;->goto(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_2

    .line 20
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->case()I

    move-result p4

    if-lez p4, :cond_6

    .line 21
    iget-object p4, p3, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    .line 22
    invoke-virtual {p4}, Lcom/google/protobuf/GeneratedMessageLite$case;->getLiteType()Lcom/google/protobuf/c2$if;

    move-result-object p4

    .line 23
    invoke-static {p1, p4, v1}, Lcom/google/protobuf/FieldSet;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/c2$if;Z)Ljava/lang/Object;

    move-result-object p4

    .line 24
    iget-object p5, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    iget-object v0, p3, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    invoke-virtual {p5, v0, p4}, Lcom/google/protobuf/FieldSet;->goto(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_3

    .line 25
    :cond_6
    invoke-virtual {p1, p2}, Lcom/google/protobuf/CodedInputStream;->native(I)V

    goto/16 :goto_6

    .line 26
    :cond_7
    sget-object p4, Lcom/google/protobuf/GeneratedMessageLite$do;->do:[I

    iget-object v0, p3, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$case;->getLiteJavaType()Lcom/google/protobuf/c2$for;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p4, p4, v0

    if-eq p4, v2, :cond_a

    const/4 p2, 0x2

    if-eq p4, p2, :cond_8

    .line 27
    iget-object p2, p3, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    .line 28
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$case;->getLiteType()Lcom/google/protobuf/c2$if;

    move-result-object p2

    .line 29
    invoke-static {p1, p2, v1}, Lcom/google/protobuf/FieldSet;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/c2$if;Z)Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    .line 30
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->extends()I

    move-result p1

    .line 31
    iget-object p2, p3, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$case;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object p2

    if-nez p2, :cond_9

    .line 32
    invoke-virtual {p0, p5, p1}, Lcom/google/protobuf/GeneratedMessageLite;->import(II)V

    return v2

    :cond_9
    move-object p1, p2

    goto :goto_5

    :cond_a
    const/4 p4, 0x0

    .line 33
    iget-object p5, p3, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$case;->isRepeated()Z

    move-result p5

    if-nez p5, :cond_b

    .line 34
    iget-object p5, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    iget-object v0, p3, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    invoke-virtual {p5, v0}, Lcom/google/protobuf/FieldSet;->return(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/protobuf/MessageLite;

    if-eqz p5, :cond_b

    .line 35
    invoke-interface {p5}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object p4

    :cond_b
    if-nez p4, :cond_c

    .line 36
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$else;->for()Lcom/google/protobuf/MessageLite;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object p4

    .line 37
    :cond_c
    iget-object p5, p3, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$case;->getLiteType()Lcom/google/protobuf/c2$if;

    move-result-object p5

    sget-object v0, Lcom/google/protobuf/c2$if;->GROUP:Lcom/google/protobuf/c2$if;

    if-ne p5, v0, :cond_d

    .line 38
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$else;->new()I

    move-result p5

    invoke-virtual {p1, p5, p4, p2}, Lcom/google/protobuf/CodedInputStream;->continue(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/implements;)V

    goto :goto_4

    .line 39
    :cond_d
    invoke-virtual {p1, p4, p2}, Lcom/google/protobuf/CodedInputStream;->protected(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/implements;)V

    .line 40
    :goto_4
    invoke-interface {p4}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object p1

    .line 41
    :goto_5
    iget-object p2, p3, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$case;->isRepeated()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 42
    iget-object p2, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    iget-object p4, p3, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    .line 43
    invoke-virtual {p3, p1}, Lcom/google/protobuf/GeneratedMessageLite$else;->break(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 44
    invoke-virtual {p2, p4, p1}, Lcom/google/protobuf/FieldSet;->goto(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_6

    .line 45
    :cond_e
    iget-object p2, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    iget-object p4, p3, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    invoke-virtual {p3, p1}, Lcom/google/protobuf/GeneratedMessageLite$else;->break(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Lcom/google/protobuf/FieldSet;->b(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    :goto_6
    return v2
.end method

.method private p(Lcom/google/protobuf/GeneratedMessageLite$else;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageLite$else<",
            "TMessageType;*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$else;->goto()Lcom/google/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->const()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public extensionsAreInitialized()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->continue()Z

    move-result v0

    return v0
.end method

.method public extensionsSerializedSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->extends()I

    move-result v0

    return v0
.end method

.method public extensionsSerializedSizeAsMessageSet()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->static()I

    move-result v0

    return v0
.end method

.method public g()Lcom/google/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/GeneratedMessageLite$case;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->abstract()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->catch()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->const()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public final getExtension(Lcom/google/protobuf/interface;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/interface<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->do(Lcom/google/protobuf/interface;)Lcom/google/protobuf/GeneratedMessageLite$else;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$try;->p(Lcom/google/protobuf/GeneratedMessageLite$else;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    iget-object v1, p1, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/FieldSet;->return(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$else;->if:Ljava/lang/Object;

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$else;->else(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/google/protobuf/interface;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/interface<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    .line 6
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->do(Lcom/google/protobuf/interface;)Lcom/google/protobuf/GeneratedMessageLite$else;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$try;->p(Lcom/google/protobuf/GeneratedMessageLite$else;)V

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    iget-object v1, p1, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    .line 9
    invoke-virtual {v0, v1, p2}, Lcom/google/protobuf/FieldSet;->throws(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$else;->this(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtensionCount(Lcom/google/protobuf/interface;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/interface<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->do(Lcom/google/protobuf/interface;)Lcom/google/protobuf/GeneratedMessageLite$else;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$try;->p(Lcom/google/protobuf/GeneratedMessageLite$else;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->default(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    return p1
.end method

.method public final h(Lcom/google/protobuf/GeneratedMessageLite$try;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->abstract()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->catch()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->transient(Lcom/google/protobuf/FieldSet;)V

    return-void
.end method

.method public final hasExtension(Lcom/google/protobuf/interface;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/interface<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->do(Lcom/google/protobuf/interface;)Lcom/google/protobuf/GeneratedMessageLite$else;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$try;->p(Lcom/google/protobuf/GeneratedMessageLite$else;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->package(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method public k()Lcom/google/protobuf/GeneratedMessageLite$try$do;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/GeneratedMessageLite$try<",
            "TMessageType;TBuilderType;>.do;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$try$do;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$try$do;-><init>(Lcom/google/protobuf/GeneratedMessageLite$try;ZLcom/google/protobuf/GeneratedMessageLite$do;)V

    return-object v0
.end method

.method public l()Lcom/google/protobuf/GeneratedMessageLite$try$do;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/GeneratedMessageLite$try<",
            "TMessageType;TBuilderType;>.do;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$try$do;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$try$do;-><init>(Lcom/google/protobuf/GeneratedMessageLite$try;ZLcom/google/protobuf/GeneratedMessageLite$do;)V

    return-object v0
.end method

.method public n(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/google/protobuf/MessageLite;",
            ">(TMessageType;",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/implements;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p4}, Lcom/google/protobuf/c2;->do(I)I

    move-result v5

    .line 2
    invoke-virtual {p3, p1, v5}, Lcom/google/protobuf/implements;->for(Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$else;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite$try;->m(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/google/protobuf/GeneratedMessageLite$else;II)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->public()Lcom/google/protobuf/GeneratedMessageLite$if;

    move-result-object v0

    return-object v0
.end method

.method public o(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/google/protobuf/MessageLite;",
            ">(TMessageType;",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/implements;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/protobuf/c2;->while:I

    if-ne p4, v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$try;->j(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-static {p4}, Lcom/google/protobuf/c2;->if(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$try;->n(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;I)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    invoke-virtual {p2, p4}, Lcom/google/protobuf/CodedInputStream;->t(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->e()Lcom/google/protobuf/GeneratedMessageLite$if;

    move-result-object v0

    return-object v0
.end method

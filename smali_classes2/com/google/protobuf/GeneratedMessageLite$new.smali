.class public abstract Lcom/google/protobuf/GeneratedMessageLite$new;
.super Lcom/google/protobuf/GeneratedMessageLite$if;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/GeneratedMessageLite$try<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/protobuf/GeneratedMessageLite$new<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/protobuf/GeneratedMessageLite$if<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$try;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$if;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private return(Lcom/google/protobuf/GeneratedMessageLite$else;)V
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

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$if;->else()Lcom/google/protobuf/GeneratedMessageLite;

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

.method private while()Lcom/google/protobuf/FieldSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/GeneratedMessageLite$case;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$if;->if:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$try;

    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->abstract()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->catch()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageLite$if;->if:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite$try;

    iput-object v0, v1, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$new;->super()Lcom/google/protobuf/GeneratedMessageLite$try;

    move-result-object v0

    return-object v0
.end method

.method public case()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$if;->case()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$if;->if:Lcom/google/protobuf/GeneratedMessageLite;

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite$try;

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$try;

    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->catch()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, v1, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    return-void
.end method

.method public final final(Lcom/google/protobuf/interface;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$new;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/interface<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->do(Lcom/google/protobuf/interface;)Lcom/google/protobuf/GeneratedMessageLite$else;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$new;->return(Lcom/google/protobuf/GeneratedMessageLite$else;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$if;->try()V

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$new;->while()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iget-object v1, p1, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$else;->break(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/FieldSet;->goto(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getExtension(Lcom/google/protobuf/interface;)Ljava/lang/Object;
    .locals 1
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
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$if;->if:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$try;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$try;->getExtension(Lcom/google/protobuf/interface;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/google/protobuf/interface;I)Ljava/lang/Object;
    .locals 1
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

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$if;->if:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$try;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$try;->getExtension(Lcom/google/protobuf/interface;I)Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$if;->if:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$try;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$try;->getExtensionCount(Lcom/google/protobuf/interface;)I

    move-result p1

    return p1
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
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$if;->if:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$try;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$try;->hasExtension(Lcom/google/protobuf/interface;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic if()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$new;->super()Lcom/google/protobuf/GeneratedMessageLite$try;

    move-result-object v0

    return-object v0
.end method

.method public import(Lcom/google/protobuf/FieldSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/GeneratedMessageLite$case;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$if;->try()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$if;->if:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$try;

    iput-object p1, v0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    return-void
.end method

.method public final native(Lcom/google/protobuf/interface;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$new;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/interface<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->do(Lcom/google/protobuf/interface;)Lcom/google/protobuf/GeneratedMessageLite$else;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$new;->return(Lcom/google/protobuf/GeneratedMessageLite$else;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$if;->try()V

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$new;->while()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iget-object v1, p1, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    .line 5
    invoke-virtual {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$else;->break(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-virtual {v0, v1, p2, p1}, Lcom/google/protobuf/FieldSet;->c(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    return-object p0
.end method

.method public final public(Lcom/google/protobuf/interface;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$new;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/interface<",
            "TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->do(Lcom/google/protobuf/interface;)Lcom/google/protobuf/GeneratedMessageLite$else;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$new;->return(Lcom/google/protobuf/GeneratedMessageLite$else;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$if;->try()V

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$new;->while()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iget-object v1, p1, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$else;->catch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/FieldSet;->b(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final super()Lcom/google/protobuf/GeneratedMessageLite$try;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$if;->for:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$if;->if:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$try;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$if;->if:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$try;

    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$try;->new:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->protected()V

    .line 4
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$if;->if()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$try;

    return-object v0
.end method

.method public final throw(Lcom/google/protobuf/interface;)Lcom/google/protobuf/GeneratedMessageLite$new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/interface<",
            "TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->do(Lcom/google/protobuf/interface;)Lcom/google/protobuf/GeneratedMessageLite$else;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$new;->return(Lcom/google/protobuf/GeneratedMessageLite$else;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$if;->try()V

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$new;->while()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$else;->new:Lcom/google/protobuf/GeneratedMessageLite$case;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->break(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)V

    return-object p0
.end method

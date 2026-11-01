.class public final Lcom/google/protobuf/d$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private break:Ljava/lang/Object;

.field private case:Z

.field private catch:Lcom/google/protobuf/Internal$EnumVerifier;

.field private class:Ljava/lang/reflect/Field;

.field private do:Ljava/lang/reflect/Field;

.field private else:Z

.field private for:I

.field private goto:Lcom/google/protobuf/n0;

.field private if:Lcom/google/protobuf/g;

.field private new:Ljava/lang/reflect/Field;

.field private this:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private try:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/d$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/d$if;-><init>()V

    return-void
.end method


# virtual methods
.method public break(Z)Lcom/google/protobuf/d$if;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/protobuf/d$if;->case:Z

    return-object p0
.end method

.method public case(I)Lcom/google/protobuf/d$if;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/d$if;->for:I

    return-object p0
.end method

.method public catch(Lcom/google/protobuf/g;)Lcom/google/protobuf/d$if;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/d$if;->if:Lcom/google/protobuf/g;

    return-object p0
.end method

.method public do()Lcom/google/protobuf/d;
    .locals 8

    .line 1
    iget-object v2, p0, Lcom/google/protobuf/d$if;->goto:Lcom/google/protobuf/n0;

    if-eqz v2, :cond_0

    .line 2
    iget v0, p0, Lcom/google/protobuf/d$if;->for:I

    iget-object v1, p0, Lcom/google/protobuf/d$if;->if:Lcom/google/protobuf/g;

    iget-object v3, p0, Lcom/google/protobuf/d$if;->this:Ljava/lang/Class;

    iget-boolean v4, p0, Lcom/google/protobuf/d$if;->else:Z

    iget-object v5, p0, Lcom/google/protobuf/d$if;->catch:Lcom/google/protobuf/Internal$EnumVerifier;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/d;->case(ILcom/google/protobuf/g;Lcom/google/protobuf/n0;Ljava/lang/Class;ZLcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/d;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/d$if;->break:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/d$if;->do:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/d$if;->for:I

    iget-object v3, p0, Lcom/google/protobuf/d$if;->catch:Lcom/google/protobuf/Internal$EnumVerifier;

    invoke-static {v1, v2, v0, v3}, Lcom/google/protobuf/d;->try(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/d;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v4, p0, Lcom/google/protobuf/d$if;->new:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_3

    .line 6
    iget-boolean v0, p0, Lcom/google/protobuf/d$if;->case:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p0, Lcom/google/protobuf/d$if;->do:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/d$if;->for:I

    iget-object v3, p0, Lcom/google/protobuf/d$if;->if:Lcom/google/protobuf/g;

    iget v5, p0, Lcom/google/protobuf/d$if;->try:I

    iget-boolean v6, p0, Lcom/google/protobuf/d$if;->else:Z

    iget-object v7, p0, Lcom/google/protobuf/d$if;->catch:Lcom/google/protobuf/Internal$EnumVerifier;

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/d;->break(Ljava/lang/reflect/Field;ILcom/google/protobuf/g;Ljava/lang/reflect/Field;IZLcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/d;

    move-result-object v0

    return-object v0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/d$if;->do:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/d$if;->for:I

    iget-object v3, p0, Lcom/google/protobuf/d$if;->if:Lcom/google/protobuf/g;

    iget v5, p0, Lcom/google/protobuf/d$if;->try:I

    iget-boolean v6, p0, Lcom/google/protobuf/d$if;->else:Z

    iget-object v7, p0, Lcom/google/protobuf/d$if;->catch:Lcom/google/protobuf/Internal$EnumVerifier;

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/d;->this(Ljava/lang/reflect/Field;ILcom/google/protobuf/g;Ljava/lang/reflect/Field;IZLcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/d;

    move-result-object v0

    return-object v0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/d$if;->catch:Lcom/google/protobuf/Internal$EnumVerifier;

    if-eqz v0, :cond_5

    .line 10
    iget-object v1, p0, Lcom/google/protobuf/d$if;->class:Ljava/lang/reflect/Field;

    if-nez v1, :cond_4

    .line 11
    iget-object v1, p0, Lcom/google/protobuf/d$if;->do:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/d$if;->for:I

    iget-object v3, p0, Lcom/google/protobuf/d$if;->if:Lcom/google/protobuf/g;

    invoke-static {v1, v2, v3, v0}, Lcom/google/protobuf/d;->new(Ljava/lang/reflect/Field;ILcom/google/protobuf/g;Lcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/d;

    move-result-object v0

    return-object v0

    .line 12
    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/d$if;->do:Ljava/lang/reflect/Field;

    iget v3, p0, Lcom/google/protobuf/d$if;->for:I

    iget-object v4, p0, Lcom/google/protobuf/d$if;->if:Lcom/google/protobuf/g;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/google/protobuf/d;->goto(Ljava/lang/reflect/Field;ILcom/google/protobuf/g;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)Lcom/google/protobuf/d;

    move-result-object v0

    return-object v0

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/d$if;->class:Ljava/lang/reflect/Field;

    if-nez v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/google/protobuf/d$if;->do:Ljava/lang/reflect/Field;

    iget v1, p0, Lcom/google/protobuf/d$if;->for:I

    iget-object v2, p0, Lcom/google/protobuf/d$if;->if:Lcom/google/protobuf/g;

    iget-boolean v3, p0, Lcom/google/protobuf/d$if;->else:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/d;->for(Ljava/lang/reflect/Field;ILcom/google/protobuf/g;Z)Lcom/google/protobuf/d;

    move-result-object v0

    return-object v0

    .line 15
    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/d$if;->do:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/d$if;->for:I

    iget-object v3, p0, Lcom/google/protobuf/d$if;->if:Lcom/google/protobuf/g;

    invoke-static {v1, v2, v3, v0}, Lcom/google/protobuf/d;->else(Ljava/lang/reflect/Field;ILcom/google/protobuf/g;Ljava/lang/reflect/Field;)Lcom/google/protobuf/d;

    move-result-object v0

    return-object v0
.end method

.method public else(Ljava/lang/Object;)Lcom/google/protobuf/d$if;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/d$if;->break:Ljava/lang/Object;

    return-object p0
.end method

.method public for(Z)Lcom/google/protobuf/d$if;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/protobuf/d$if;->else:Z

    return-object p0
.end method

.method public goto(Lcom/google/protobuf/n0;Ljava/lang/Class;)Lcom/google/protobuf/d$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/n0;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/protobuf/d$if;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/d$if;->do:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/d$if;->new:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/d$if;->goto:Lcom/google/protobuf/n0;

    .line 3
    iput-object p2, p0, Lcom/google/protobuf/d$if;->this:Ljava/lang/Class;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot set oneof when field or presenceField have been provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public if(Ljava/lang/reflect/Field;)Lcom/google/protobuf/d$if;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/d$if;->class:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public new(Lcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/d$if;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/d$if;->catch:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object p0
.end method

.method public this(Ljava/lang/reflect/Field;I)Lcom/google/protobuf/d$if;
    .locals 1

    const-string v0, "presenceField"

    .line 1
    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->try(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    iput-object p1, p0, Lcom/google/protobuf/d$if;->new:Ljava/lang/reflect/Field;

    .line 2
    iput p2, p0, Lcom/google/protobuf/d$if;->try:I

    return-object p0
.end method

.method public try(Ljava/lang/reflect/Field;)Lcom/google/protobuf/d$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/d$if;->goto:Lcom/google/protobuf/n0;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/d$if;->do:Ljava/lang/reflect/Field;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set field when building a oneof."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

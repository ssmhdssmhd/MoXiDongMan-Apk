.class public Landroid/support/v4/d02;
.super Lorg/antlr/v4/runtime/atn/else;
.source "SourceFile"


# static fields
.field public static final synthetic break:Z


# instance fields
.field public final goto:Lorg/antlr/v4/runtime/atn/else;

.field public final this:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/else;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1, p2}, Lorg/antlr/v4/runtime/atn/else;->if(Lorg/antlr/v4/runtime/atn/else;I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/antlr/v4/runtime/atn/else;->do()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/atn/else;-><init>(I)V

    .line 2
    iput-object p1, p0, Landroid/support/v4/d02;->goto:Lorg/antlr/v4/runtime/atn/else;

    .line 3
    iput p2, p0, Landroid/support/v4/d02;->this:I

    return-void
.end method

.method public static static(Lorg/antlr/v4/runtime/atn/else;I)Landroid/support/v4/d02;
    .locals 1

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lorg/antlr/v4/runtime/atn/else;->for:Landroid/support/v4/z60;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/d02;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/d02;-><init>(Lorg/antlr/v4/runtime/atn/else;I)V

    return-object v0
.end method


# virtual methods
.method public break(I)I
    .locals 0

    .line 1
    iget p1, p0, Landroid/support/v4/d02;->this:I

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Landroid/support/v4/d02;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/else;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 3
    :cond_2
    check-cast p1, Landroid/support/v4/d02;

    .line 4
    iget v1, p0, Landroid/support/v4/d02;->this:I

    iget v3, p1, Landroid/support/v4/d02;->this:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Landroid/support/v4/d02;->goto:Lorg/antlr/v4/runtime/atn/else;

    if-eqz v1, :cond_3

    iget-object p1, p1, Landroid/support/v4/d02;->goto:Lorg/antlr/v4/runtime/atn/else;

    invoke-virtual {v1, p1}, Lorg/antlr/v4/runtime/atn/else;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public this(I)Lorg/antlr/v4/runtime/atn/else;
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/support/v4/d02;->goto:Lorg/antlr/v4/runtime/atn/else;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/d02;->goto:Lorg/antlr/v4/runtime/atn/else;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 3
    iget v0, p0, Landroid/support/v4/d02;->this:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    const-string v0, "$"

    return-object v0

    .line 4
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/support/v4/d02;->this:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public while()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

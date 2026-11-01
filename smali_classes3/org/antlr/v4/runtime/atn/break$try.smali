.class public Lorg/antlr/v4/runtime/atn/break$try;
.super Lorg/antlr/v4/runtime/atn/break;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/atn/break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation


# instance fields
.field public final for:I

.field public final if:I

.field public final new:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/antlr/v4/runtime/atn/break;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/antlr/v4/runtime/atn/break$try;->if:I

    .line 3
    iput v0, p0, Lorg/antlr/v4/runtime/atn/break$try;->for:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/antlr/v4/runtime/atn/break$try;->new:Z

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/antlr/v4/runtime/atn/break;-><init>()V

    .line 6
    iput p1, p0, Lorg/antlr/v4/runtime/atn/break$try;->if:I

    .line 7
    iput p2, p0, Lorg/antlr/v4/runtime/atn/break$try;->for:I

    .line 8
    iput-boolean p3, p0, Lorg/antlr/v4/runtime/atn/break$try;->new:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lorg/antlr/v4/runtime/atn/break$try;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lorg/antlr/v4/runtime/atn/break$try;

    .line 3
    iget v2, p0, Lorg/antlr/v4/runtime/atn/break$try;->if:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/break$try;->if:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/antlr/v4/runtime/atn/break$try;->for:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/break$try;->for:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lorg/antlr/v4/runtime/atn/break$try;->new:Z

    iget-boolean p1, p1, Lorg/antlr/v4/runtime/atn/break$try;->new:Z

    if-ne v2, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public for(Lorg/antlr/v4/runtime/this;Landroid/support/v4/vo1;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/this<",
            "**>;",
            "Landroid/support/v4/vo1;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/atn/break$try;->new:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2
    :goto_0
    iget v0, p0, Lorg/antlr/v4/runtime/atn/break$try;->if:I

    iget v1, p0, Lorg/antlr/v4/runtime/atn/break$try;->for:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/antlr/v4/runtime/this;->switch(Landroid/support/v4/vo1;II)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/v4/y01;->for()I

    move-result v0

    .line 2
    iget v1, p0, Lorg/antlr/v4/runtime/atn/break$try;->if:I

    invoke-static {v0, v1}, Landroid/support/v4/y01;->try(II)I

    move-result v0

    .line 3
    iget v1, p0, Lorg/antlr/v4/runtime/atn/break$try;->for:I

    invoke-static {v0, v1}, Landroid/support/v4/y01;->try(II)I

    move-result v0

    .line 4
    iget-boolean v1, p0, Lorg/antlr/v4/runtime/atn/break$try;->new:Z

    invoke-static {v0, v1}, Landroid/support/v4/y01;->try(II)I

    move-result v0

    const/4 v1, 0x3

    .line 5
    invoke-static {v0, v1}, Landroid/support/v4/y01;->do(II)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/break$try;->if:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/break$try;->for:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

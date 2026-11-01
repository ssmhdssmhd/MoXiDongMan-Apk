.class public Lorg/antlr/v4/runtime/atn/break$new;
.super Lorg/antlr/v4/runtime/atn/break;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/atn/break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/antlr/v4/runtime/atn/break;",
        "Ljava/lang/Comparable<",
        "Lorg/antlr/v4/runtime/atn/break$new;",
        ">;"
    }
.end annotation


# instance fields
.field public final if:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/antlr/v4/runtime/atn/break;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/antlr/v4/runtime/atn/break$new;->if:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/antlr/v4/runtime/atn/break;-><init>()V

    .line 4
    iput p1, p0, Lorg/antlr/v4/runtime/atn/break$new;->if:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/antlr/v4/runtime/atn/break$new;

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/break$new;->else(Lorg/antlr/v4/runtime/atn/break$new;)I

    move-result p1

    return p1
.end method

.method public else(Lorg/antlr/v4/runtime/atn/break$new;)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/atn/break$new;->if:I

    iget p1, p1, Lorg/antlr/v4/runtime/atn/break$new;->if:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/antlr/v4/runtime/atn/break$new;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lorg/antlr/v4/runtime/atn/break$new;

    .line 3
    iget v2, p0, Lorg/antlr/v4/runtime/atn/break$new;->if:I

    iget p1, p1, Lorg/antlr/v4/runtime/atn/break$new;->if:I

    if-ne v2, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public for(Lorg/antlr/v4/runtime/this;Landroid/support/v4/vo1;)Z
    .locals 1
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
    iget v0, p0, Lorg/antlr/v4/runtime/atn/break$new;->if:I

    invoke-virtual {p1, p2, v0}, Lorg/antlr/v4/runtime/this;->public(Landroid/support/v4/vo1;I)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/atn/break$new;->if:I

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public new(Lorg/antlr/v4/runtime/this;Landroid/support/v4/vo1;)Lorg/antlr/v4/runtime/atn/break;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/this<",
            "**>;",
            "Landroid/support/v4/vo1;",
            ")",
            "Lorg/antlr/v4/runtime/atn/break;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/atn/break$new;->if:I

    invoke-virtual {p1, p2, v0}, Lorg/antlr/v4/runtime/this;->public(Landroid/support/v4/vo1;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lorg/antlr/v4/runtime/atn/break;->do:Lorg/antlr/v4/runtime/atn/break;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/break$new;->if:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">=prec}?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

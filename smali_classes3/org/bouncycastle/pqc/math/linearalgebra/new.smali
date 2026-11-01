.class public abstract Lorg/bouncycastle/pqc/math/linearalgebra/new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;


# instance fields
.field public do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

.field public if:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract break()V
.end method

.method public abstract case()V
.end method

.method public abstract catch()V
.end method

.method public abstract class(I)Z
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract const()Z
.end method

.method public abstract do()V
.end method

.method public abstract else()Lorg/bouncycastle/pqc/math/linearalgebra/new;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public abstract final()I
.end method

.method public final for(Lorg/bouncycastle/pqc/math/linearalgebra/try;)Lorg/bouncycastle/pqc/math/linearalgebra/new;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/try;->for(Lorg/bouncycastle/pqc/math/linearalgebra/new;Lorg/bouncycastle/pqc/math/linearalgebra/try;)Lorg/bouncycastle/pqc/math/linearalgebra/new;

    move-result-object p1

    return-object p1
.end method

.method public abstract goto()Lorg/bouncycastle/pqc/math/linearalgebra/new;
.end method

.method public abstract if()V
.end method

.method public final new()Lorg/bouncycastle/pqc/math/linearalgebra/try;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    return-object v0
.end method

.method public final subtract(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;
    .locals 0

    invoke-interface {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;->add(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object p1

    return-object p1
.end method

.method public final subtractFromThis(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    return-void
.end method

.method public abstract this()Lorg/bouncycastle/pqc/math/linearalgebra/new;
.end method

.method public abstract try()Lorg/bouncycastle/pqc/math/linearalgebra/new;
.end method

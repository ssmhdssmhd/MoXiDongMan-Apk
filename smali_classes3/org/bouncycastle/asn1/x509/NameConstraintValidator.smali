.class public interface abstract Lorg/bouncycastle/asn1/x509/NameConstraintValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addExcludedSubtree(Landroid/support/v4/wg0;)V
.end method

.method public abstract checkExcluded(Landroid/support/v4/tg0;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/a21;
        }
    .end annotation
.end method

.method public abstract checkPermitted(Landroid/support/v4/tg0;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/a21;
        }
    .end annotation
.end method

.method public abstract intersectEmptyPermittedSubtree(I)V
.end method

.method public abstract intersectPermittedSubtree(Landroid/support/v4/wg0;)V
.end method

.method public abstract intersectPermittedSubtree([Landroid/support/v4/wg0;)V
.end method

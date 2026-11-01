.class public interface abstract annotation Landroid/support/v4/f41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/support/v4/f41;
        when = .enum Ljavax/annotation/meta/for;->ALWAYS:Ljavax/annotation/meta/for;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/f41$do;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljavax/annotation/meta/do;
    applicableTo = Ljava/lang/Number;
.end annotation


# virtual methods
.method public abstract when()Ljavax/annotation/meta/for;
.end method

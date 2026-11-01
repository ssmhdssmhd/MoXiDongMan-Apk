.class public interface abstract annotation Landroid/support/v4/rm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/support/v4/q92;
.end annotation

.annotation runtime Landroid/support/v4/r32;
    value = "RegEx"
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/support/v4/rm1;
        when = .enum Ljavax/annotation/meta/for;->ALWAYS:Ljavax/annotation/meta/for;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/rm1$do;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract when()Ljavax/annotation/meta/for;
.end method

.class public interface abstract annotation Lkotlin/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Landroid/support/v4/a11;
.end annotation

.annotation runtime Landroid/support/v4/t42;
    allowedTargets = {
        .enum Landroid/support/v4/c2;->CLASS:Landroid/support/v4/c2;,
        .enum Landroid/support/v4/c2;->FUNCTION:Landroid/support/v4/c2;,
        .enum Landroid/support/v4/c2;->PROPERTY:Landroid/support/v4/c2;,
        .enum Landroid/support/v4/c2;->ANNOTATION_CLASS:Landroid/support/v4/c2;,
        .enum Landroid/support/v4/c2;->CONSTRUCTOR:Landroid/support/v4/c2;,
        .enum Landroid/support/v4/c2;->PROPERTY_SETTER:Landroid/support/v4/c2;,
        .enum Landroid/support/v4/c2;->PROPERTY_GETTER:Landroid/support/v4/c2;,
        .enum Landroid/support/v4/c2;->TYPEALIAS:Landroid/support/v4/c2;
    }
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lkotlin/for;
        level = .enum Lkotlin/try;->WARNING:Lkotlin/try;
        replaceWith = .subannotation Landroid/support/v4/an1;
            expression = ""
            imports = {}
        .end subannotation
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0002\u0018\u00002\u00020\u0001B\u001c\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008R\u0013\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004R\u0013\u0010\u0006\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\t\u001a\u00020\u00088\u0006@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlin/for;",
        "",
        "",
        "message",
        "()Ljava/lang/String;",
        "Landroid/support/v4/an1;",
        "replaceWith",
        "()Landroid/support/v4/an1;",
        "Lkotlin/try;",
        "level",
        "()Lkotlin/try;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# virtual methods
.method public abstract level()Lkotlin/try;
.end method

.method public abstract message()Ljava/lang/String;
.end method

.method public abstract replaceWith()Landroid/support/v4/an1;
.end method

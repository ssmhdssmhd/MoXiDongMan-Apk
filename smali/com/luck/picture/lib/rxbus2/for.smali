.class public interface abstract annotation Lcom/luck/picture/lib/rxbus2/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/luck/picture/lib/rxbus2/for;
        code = -0x1
        threadMode = .enum Lcom/luck/picture/lib/rxbus2/new;->CURRENT_THREAD:Lcom/luck/picture/lib/rxbus2/new;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract code()I
.end method

.method public abstract threadMode()Lcom/luck/picture/lib/rxbus2/new;
.end method

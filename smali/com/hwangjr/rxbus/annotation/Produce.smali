.class public interface abstract annotation Lcom/hwangjr/rxbus/annotation/Produce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/hwangjr/rxbus/annotation/Produce;
        tags = {}
        thread = .enum Lcom/hwangjr/rxbus/thread/EventThread;->MAIN_THREAD:Lcom/hwangjr/rxbus/thread/EventThread;
    .end subannotation
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
.method public abstract tags()[Lcom/hwangjr/rxbus/annotation/Tag;
.end method

.method public abstract thread()Lcom/hwangjr/rxbus/thread/EventThread;
.end method

.class final Lcom/google/common/reflect/break$this$new;
.super Lcom/google/common/collect/k2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/break$this;->goto(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/k2<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/Comparator;

.field public final synthetic if:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/reflect/break$this$new;->do:Ljava/util/Comparator;

    iput-object p2, p0, Lcom/google/common/reflect/break$this$new;->if:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/common/collect/k2;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break$this$new;->do:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/reflect/break$this$new;->if:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/reflect/break$this$new;->if:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

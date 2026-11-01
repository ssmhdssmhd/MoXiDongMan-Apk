.class public Lorg/antlr/v4/runtime/break;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/break$for;,
        Lorg/antlr/v4/runtime/break$do;,
        Lorg/antlr/v4/runtime/break$if;,
        Lorg/antlr/v4/runtime/break$new;
    }
.end annotation


# static fields
.field public static final case:I = 0x0

.field public static final new:Ljava/lang/String; = "default"

.field public static final try:I = 0x64


# instance fields
.field public final do:Lorg/antlr/v4/runtime/TokenStream;

.field public final for:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/break$new;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/TokenStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/antlr/v4/runtime/break;->do:Lorg/antlr/v4/runtime/TokenStream;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/antlr/v4/runtime/break;->if:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "default"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/antlr/v4/runtime/break;->for:Ljava/util/Map;

    return-void
.end method

.method private native(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/break$new;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Lorg/antlr/v4/runtime/break;->if:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public abstract(ILjava/lang/Object;)V
    .locals 1

    const-string v0, "default"

    .line 1
    invoke-virtual {p0, v0, p1, p1, p2}, Lorg/antlr/v4/runtime/break;->continue(Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public break(Ljava/util/List;Ljava/lang/Class;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/antlr/v4/runtime/break$new;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lorg/antlr/v4/runtime/break$new;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/break$new;

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p2, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public case(Lorg/antlr/v4/runtime/Token;)V
    .locals 1

    const-string v0, "default"

    .line 1
    invoke-virtual {p0, v0, p1, p1}, Lorg/antlr/v4/runtime/break;->try(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)V

    return-void
.end method

.method public catch()I
    .locals 1

    const-string v0, "default"

    .line 1
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/break;->class(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public class(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/break;->for:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public const(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/break$new;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/break;->if:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/break;->native(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public continue(Ljava/lang/String;IILjava/lang/Object;)V
    .locals 1

    if-gt p2, p3, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/break;->do:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/IntStream;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 2
    new-instance v0, Lorg/antlr/v4/runtime/break$for;

    invoke-direct {v0, p0, p2, p3, p4}, Lorg/antlr/v4/runtime/break$for;-><init>(Lorg/antlr/v4/runtime/break;IILjava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/break;->const(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iput p2, v0, Lorg/antlr/v4/runtime/break$new;->do:I

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "replace: range invalid: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".."

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "(size="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/antlr/v4/runtime/break;->do:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {p2}, Lorg/antlr/v4/runtime/IntStream;->size()I

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public default(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/break$if;

    invoke-direct {v0, p0, p2, p3}, Lorg/antlr/v4/runtime/break$if;-><init>(Lorg/antlr/v4/runtime/break;ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/break;->const(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iput p2, v0, Lorg/antlr/v4/runtime/break$new;->do:I

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public else(Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)V
    .locals 1

    const-string v0, "default"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lorg/antlr/v4/runtime/break;->try(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)V

    return-void
.end method

.method public extends(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p2}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/break;->default(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/break;->do:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/IntStream;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/support/v4/rn0;->case(II)Landroid/support/v4/rn0;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {p0, v1, v0}, Lorg/antlr/v4/runtime/break;->while(Ljava/lang/String;Landroid/support/v4/rn0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public finally(Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "default"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lorg/antlr/v4/runtime/break;->extends(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V

    return-void
.end method

.method public for(II)V
    .locals 1

    const-string v0, "default"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lorg/antlr/v4/runtime/break;->new(Ljava/lang/String;II)V

    return-void
.end method

.method public goto()V
    .locals 1

    const-string v0, "default"

    .line 1
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/break;->this(Ljava/lang/String;)V

    return-void
.end method

.method public if(I)V
    .locals 1

    const-string v0, "default"

    .line 1
    invoke-virtual {p0, v0, p1, p1}, Lorg/antlr/v4/runtime/break;->new(Ljava/lang/String;II)V

    return-void
.end method

.method public implements(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/break;->for:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final import()Lorg/antlr/v4/runtime/TokenStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/break;->do:Lorg/antlr/v4/runtime/TokenStream;

    return-object v0
.end method

.method public interface(Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "default"

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/antlr/v4/runtime/break;->strictfp(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V

    return-void
.end method

.method public new(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/antlr/v4/runtime/break;->continue(Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public package(Ljava/util/List;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/break$new;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/antlr/v4/runtime/break$new;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lorg/antlr/v4/runtime/break$for;

    const-class v1, Lorg/antlr/v4/runtime/break$if;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_c

    .line 2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/antlr/v4/runtime/break$new;

    if-nez v4, :cond_0

    goto/16 :goto_6

    .line 3
    :cond_0
    instance-of v4, v4, Lorg/antlr/v4/runtime/break$for;

    if-nez v4, :cond_1

    goto/16 :goto_6

    .line 4
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/antlr/v4/runtime/break$for;

    .line 5
    invoke-virtual {p0, p1, v1, v3}, Lorg/antlr/v4/runtime/break;->break(Ljava/util/List;Ljava/lang/Class;I)Ljava/util/List;

    move-result-object v6

    .line 6
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/antlr/v4/runtime/break$if;

    .line 7
    iget v8, v7, Lorg/antlr/v4/runtime/break$new;->if:I

    iget v9, v4, Lorg/antlr/v4/runtime/break$new;->if:I

    if-ne v8, v9, :cond_4

    .line 8
    iget v8, v7, Lorg/antlr/v4/runtime/break$new;->do:I

    invoke-interface {p1, v8, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Lorg/antlr/v4/runtime/break$new;->for:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lorg/antlr/v4/runtime/break$new;->for:Ljava/lang/Object;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    const-string v7, ""

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lorg/antlr/v4/runtime/break$new;->for:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    if-le v8, v9, :cond_2

    .line 10
    iget v9, v4, Lorg/antlr/v4/runtime/break$for;->try:I

    if-gt v8, v9, :cond_2

    .line 11
    iget v7, v7, Lorg/antlr/v4/runtime/break$new;->do:I

    invoke-interface {p1, v7, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {p0, p1, v0, v3}, Lorg/antlr/v4/runtime/break;->break(Ljava/util/List;Ljava/lang/Class;I)Ljava/util/List;

    move-result-object v6

    .line 13
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/antlr/v4/runtime/break$for;

    .line 14
    iget v8, v7, Lorg/antlr/v4/runtime/break$new;->if:I

    iget v9, v4, Lorg/antlr/v4/runtime/break$new;->if:I

    if-lt v8, v9, :cond_6

    iget v10, v7, Lorg/antlr/v4/runtime/break$for;->try:I

    iget v11, v4, Lorg/antlr/v4/runtime/break$for;->try:I

    if-gt v10, v11, :cond_6

    .line 15
    iget v7, v7, Lorg/antlr/v4/runtime/break$new;->do:I

    invoke-interface {p1, v7, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 16
    :cond_6
    iget v10, v7, Lorg/antlr/v4/runtime/break$for;->try:I

    if-lt v10, v9, :cond_8

    iget v9, v4, Lorg/antlr/v4/runtime/break$for;->try:I

    if-le v8, v9, :cond_7

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v8, 0x1

    .line 17
    :goto_5
    iget-object v9, v7, Lorg/antlr/v4/runtime/break$new;->for:Ljava/lang/Object;

    if-nez v9, :cond_9

    iget-object v9, v4, Lorg/antlr/v4/runtime/break$new;->for:Ljava/lang/Object;

    if-nez v9, :cond_9

    if-nez v8, :cond_9

    .line 18
    iget v8, v7, Lorg/antlr/v4/runtime/break$new;->do:I

    invoke-interface {p1, v8, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget v8, v7, Lorg/antlr/v4/runtime/break$new;->if:I

    iget v9, v4, Lorg/antlr/v4/runtime/break$new;->if:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v4, Lorg/antlr/v4/runtime/break$new;->if:I

    .line 20
    iget v7, v7, Lorg/antlr/v4/runtime/break$for;->try:I

    iget v8, v4, Lorg/antlr/v4/runtime/break$for;->try:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v4, Lorg/antlr/v4/runtime/break$for;->try:I

    .line 21
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new rop "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    if-eqz v8, :cond_a

    goto :goto_3

    .line 22
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replace op boundaries of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " overlap with previous "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v3, 0x0

    .line 23
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_16

    .line 24
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/antlr/v4/runtime/break$new;

    if-nez v4, :cond_d

    goto/16 :goto_a

    .line 25
    :cond_d
    instance-of v4, v4, Lorg/antlr/v4/runtime/break$if;

    if-nez v4, :cond_e

    goto/16 :goto_a

    .line 26
    :cond_e
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/antlr/v4/runtime/break$if;

    .line 27
    invoke-virtual {p0, p1, v1, v3}, Lorg/antlr/v4/runtime/break;->break(Ljava/util/List;Ljava/lang/Class;I)Ljava/util/List;

    move-result-object v6

    .line 28
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/antlr/v4/runtime/break$if;

    .line 29
    iget v8, v7, Lorg/antlr/v4/runtime/break$new;->if:I

    iget v9, v4, Lorg/antlr/v4/runtime/break$new;->if:I

    if-ne v8, v9, :cond_f

    .line 30
    const-class v8, Lorg/antlr/v4/runtime/break$do;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 31
    iget-object v8, v7, Lorg/antlr/v4/runtime/break$new;->for:Ljava/lang/Object;

    iget-object v9, v4, Lorg/antlr/v4/runtime/break$new;->for:Ljava/lang/Object;

    invoke-virtual {p0, v8, v9}, Lorg/antlr/v4/runtime/break;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lorg/antlr/v4/runtime/break$new;->for:Ljava/lang/Object;

    .line 32
    iget v7, v7, Lorg/antlr/v4/runtime/break$new;->do:I

    invoke-interface {p1, v7, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 33
    :cond_10
    invoke-virtual {v1, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 34
    iget-object v8, v4, Lorg/antlr/v4/runtime/break$new;->for:Ljava/lang/Object;

    iget-object v9, v7, Lorg/antlr/v4/runtime/break$new;->for:Ljava/lang/Object;

    invoke-virtual {p0, v8, v9}, Lorg/antlr/v4/runtime/break;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lorg/antlr/v4/runtime/break$new;->for:Ljava/lang/Object;

    .line 35
    iget v7, v7, Lorg/antlr/v4/runtime/break$new;->do:I

    invoke-interface {p1, v7, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 36
    :cond_11
    invoke-virtual {p0, p1, v0, v3}, Lorg/antlr/v4/runtime/break;->break(Ljava/util/List;Ljava/lang/Class;I)Ljava/util/List;

    move-result-object v6

    .line 37
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_12
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/antlr/v4/runtime/break$for;

    .line 38
    iget v8, v4, Lorg/antlr/v4/runtime/break$new;->if:I

    iget v9, v7, Lorg/antlr/v4/runtime/break$new;->if:I

    if-ne v8, v9, :cond_13

    .line 39
    iget-object v8, v4, Lorg/antlr/v4/runtime/break$new;->for:Ljava/lang/Object;

    iget-object v9, v7, Lorg/antlr/v4/runtime/break$new;->for:Ljava/lang/Object;

    invoke-virtual {p0, v8, v9}, Lorg/antlr/v4/runtime/break;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/antlr/v4/runtime/break$new;->for:Ljava/lang/Object;

    .line 40
    invoke-interface {p1, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_13
    if-lt v8, v9, :cond_12

    .line 41
    iget v9, v7, Lorg/antlr/v4/runtime/break$for;->try:I

    if-le v8, v9, :cond_14

    goto :goto_9

    .line 42
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert op "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " within boundaries of previous "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 43
    :cond_16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_19

    .line 45
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/break$new;

    if-nez v1, :cond_17

    goto :goto_c

    .line 46
    :cond_17
    iget v3, v1, Lorg/antlr/v4/runtime/break$new;->if:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_18

    .line 47
    iget v3, v1, Lorg/antlr/v4/runtime/break$new;->if:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 48
    :cond_18
    new-instance p1, Ljava/lang/Error;

    const-string v0, "should only be one op per index"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    return-object v0
.end method

.method public private(IILjava/lang/Object;)V
    .locals 1

    const-string v0, "default"

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/antlr/v4/runtime/break;->continue(Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public protected(I)V
    .locals 1

    const-string v0, "default"

    .line 1
    invoke-virtual {p0, v0, p1}, Lorg/antlr/v4/runtime/break;->transient(Ljava/lang/String;I)V

    return-void
.end method

.method public public(ILjava/lang/Object;)V
    .locals 1

    const-string v0, "default"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lorg/antlr/v4/runtime/break;->return(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public return(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/break$do;

    invoke-direct {v0, p0, p2, p3}, Lorg/antlr/v4/runtime/break$do;-><init>(Lorg/antlr/v4/runtime/break;ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/break;->const(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iput p2, v0, Lorg/antlr/v4/runtime/break$new;->do:I

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p2}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/break;->return(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public strictfp(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p2}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result p2

    invoke-interface {p3}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/antlr/v4/runtime/break;->continue(Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public super(Landroid/support/v4/rn0;)Ljava/lang/String;
    .locals 1

    const-string v0, "default"

    .line 1
    invoke-virtual {p0, v0, p1}, Lorg/antlr/v4/runtime/break;->while(Ljava/lang/String;Landroid/support/v4/rn0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public switch(Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "default"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lorg/antlr/v4/runtime/break;->static(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V

    return-void
.end method

.method public this(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/break;->transient(Ljava/lang/String;I)V

    return-void
.end method

.method public throw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/break;->do:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/IntStream;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/support/v4/rn0;->case(II)Landroid/support/v4/rn0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/break;->while(Ljava/lang/String;Landroid/support/v4/rn0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public throws(ILjava/lang/Object;)V
    .locals 1

    const-string v0, "default"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lorg/antlr/v4/runtime/break;->default(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public transient(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/break;->if:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lorg/antlr/v4/runtime/break;->if:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public try(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/antlr/v4/runtime/break;->strictfp(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V

    return-void
.end method

.method public volatile(Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "default"

    .line 1
    invoke-virtual {p0, v0, p1, p1, p2}, Lorg/antlr/v4/runtime/break;->strictfp(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V

    return-void
.end method

.method public while(Ljava/lang/String;Landroid/support/v4/rn0;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/break;->if:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2
    iget v0, p2, Landroid/support/v4/rn0;->do:I

    .line 3
    iget v1, p2, Landroid/support/v4/rn0;->if:I

    .line 4
    iget-object v2, p0, Lorg/antlr/v4/runtime/break;->do:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v2}, Lorg/antlr/v4/runtime/IntStream;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lorg/antlr/v4/runtime/break;->do:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v1}, Lorg/antlr/v4/runtime/IntStream;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-eqz p1, :cond_8

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    .line 6
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/break;->package(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    :goto_0
    if-gt v0, v1, :cond_5

    .line 8
    iget-object v2, p0, Lorg/antlr/v4/runtime/break;->do:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v2}, Lorg/antlr/v4/runtime/IntStream;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/break$new;

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v3, p0, Lorg/antlr/v4/runtime/break;->do:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v3, v0}, Lorg/antlr/v4/runtime/TokenStream;->get(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v3

    if-nez v2, :cond_4

    .line 12
    invoke-interface {v3}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    invoke-interface {v3}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {v2, p2}, Lorg/antlr/v4/runtime/break$new;->do(Ljava/lang/StringBuilder;)I

    move-result v0

    goto :goto_0

    .line 14
    :cond_5
    iget-object v0, p0, Lorg/antlr/v4/runtime/break;->do:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/IntStream;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_7

    .line 15
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/break$new;

    .line 16
    iget v1, v0, Lorg/antlr/v4/runtime/break$new;->if:I

    iget-object v2, p0, Lorg/antlr/v4/runtime/break;->do:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v2}, Lorg/antlr/v4/runtime/IntStream;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_6

    iget-object v0, v0, Lorg/antlr/v4/runtime/break$new;->for:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 17
    :cond_7
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 18
    :cond_8
    :goto_2
    iget-object p1, p0, Lorg/antlr/v4/runtime/break;->do:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {p1, p2}, Lorg/antlr/v4/runtime/TokenStream;->getText(Landroid/support/v4/rn0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.class public final Lkotlin/text/case$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/case;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/support/v4/dn0;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0016\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\t\u0010\u0005\u001a\u00020\u0002H\u0096\u0002J\t\u0010\u0007\u001a\u00020\u0006H\u0096\u0002R\"\u0010\u000e\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u0012\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\t\u001a\u0004\u0008\u0010\u0010\u000b\"\u0004\u0008\u0011\u0010\rR\"\u0010\u0015\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\t\u001a\u0004\u0008\u0013\u0010\u000b\"\u0004\u0008\u0014\u0010\rR\"\u0010\u0017\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\t\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0016\u0010\rR$\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "kotlin/text/case$do",
        "",
        "Landroid/support/v4/dn0;",
        "Landroid/support/v4/ub2;",
        "do",
        "else",
        "",
        "hasNext",
        "",
        "I",
        "case",
        "()I",
        "class",
        "(I)V",
        "nextState",
        "if",
        "for",
        "this",
        "currentStartIndex",
        "try",
        "catch",
        "nextSearchIndex",
        "goto",
        "counter",
        "nextItem",
        "Landroid/support/v4/dn0;",
        "new",
        "()Landroid/support/v4/dn0;",
        "break",
        "(Landroid/support/v4/dn0;)V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic case:Lkotlin/text/case;

.field private do:I

.field private for:I

.field private if:I

.field private new:Landroid/support/v4/dn0;
    .annotation build Landroid/support/v4/z41;
    .end annotation
.end field

.field private try:I


# direct methods
.method public constructor <init>(Lkotlin/text/case;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlin/text/case$do;->case:Lkotlin/text/case;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lkotlin/text/case$do;->do:I

    .line 3
    invoke-static {p1}, Lkotlin/text/case;->new(Lkotlin/text/case;)I

    move-result v0

    invoke-static {p1}, Lkotlin/text/case;->if(Lkotlin/text/case;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lkotlin/ranges/new;->package(III)I

    move-result p1

    iput p1, p0, Lkotlin/text/case$do;->if:I

    .line 4
    iput p1, p0, Lkotlin/text/case$do;->for:I

    return-void
.end method

.method private final do()V
    .locals 6

    .line 1
    iget v0, p0, Lkotlin/text/case$do;->for:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 2
    iput v1, p0, Lkotlin/text/case$do;->do:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lkotlin/text/case$do;->new:Landroid/support/v4/dn0;

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lkotlin/text/case$do;->case:Lkotlin/text/case;

    invoke-static {v0}, Lkotlin/text/case;->for(Lkotlin/text/case;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_1

    iget v0, p0, Lkotlin/text/case$do;->try:I

    add-int/2addr v0, v3

    iput v0, p0, Lkotlin/text/case$do;->try:I

    iget-object v4, p0, Lkotlin/text/case$do;->case:Lkotlin/text/case;

    invoke-static {v4}, Lkotlin/text/case;->for(Lkotlin/text/case;)I

    move-result v4

    if-ge v0, v4, :cond_2

    :cond_1
    iget v0, p0, Lkotlin/text/case$do;->for:I

    iget-object v4, p0, Lkotlin/text/case$do;->case:Lkotlin/text/case;

    invoke-static {v4}, Lkotlin/text/case;->if(Lkotlin/text/case;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_3

    .line 5
    :cond_2
    iget v0, p0, Lkotlin/text/case$do;->if:I

    new-instance v1, Landroid/support/v4/dn0;

    iget-object v4, p0, Lkotlin/text/case$do;->case:Lkotlin/text/case;

    invoke-static {v4}, Lkotlin/text/case;->if(Lkotlin/text/case;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/class;->v2(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Landroid/support/v4/dn0;-><init>(II)V

    iput-object v1, p0, Lkotlin/text/case$do;->new:Landroid/support/v4/dn0;

    .line 6
    iput v2, p0, Lkotlin/text/case$do;->for:I

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lkotlin/text/case$do;->case:Lkotlin/text/case;

    invoke-static {v0}, Lkotlin/text/case;->do(Lkotlin/text/case;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget-object v4, p0, Lkotlin/text/case$do;->case:Lkotlin/text/case;

    invoke-static {v4}, Lkotlin/text/case;->if(Lkotlin/text/case;)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lkotlin/text/case$do;->for:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/qb1;

    if-nez v0, :cond_4

    .line 8
    iget v0, p0, Lkotlin/text/case$do;->if:I

    new-instance v1, Landroid/support/v4/dn0;

    iget-object v4, p0, Lkotlin/text/case$do;->case:Lkotlin/text/case;

    invoke-static {v4}, Lkotlin/text/case;->if(Lkotlin/text/case;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/class;->v2(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Landroid/support/v4/dn0;-><init>(II)V

    iput-object v1, p0, Lkotlin/text/case$do;->new:Landroid/support/v4/dn0;

    .line 9
    iput v2, p0, Lkotlin/text/case$do;->for:I

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/qb1;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/v4/qb1;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 11
    iget v4, p0, Lkotlin/text/case$do;->if:I

    invoke-static {v4, v2}, Lkotlin/ranges/new;->A0(II)Landroid/support/v4/dn0;

    move-result-object v4

    iput-object v4, p0, Lkotlin/text/case$do;->new:Landroid/support/v4/dn0;

    add-int/2addr v2, v0

    .line 12
    iput v2, p0, Lkotlin/text/case$do;->if:I

    if-nez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/2addr v2, v1

    .line 13
    iput v2, p0, Lkotlin/text/case$do;->for:I

    .line 14
    :goto_0
    iput v3, p0, Lkotlin/text/case$do;->do:I

    :goto_1
    return-void
.end method


# virtual methods
.method public final break(Landroid/support/v4/dn0;)V
    .locals 0
    .param p1    # Landroid/support/v4/dn0;
        .annotation build Landroid/support/v4/z41;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lkotlin/text/case$do;->new:Landroid/support/v4/dn0;

    return-void
.end method

.method public final case()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/text/case$do;->do:I

    return v0
.end method

.method public final catch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/text/case$do;->for:I

    return-void
.end method

.method public final class(I)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/text/case$do;->do:I

    return-void
.end method

.method public else()Landroid/support/v4/dn0;
    .locals 3
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    iget v0, p0, Lkotlin/text/case$do;->do:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lkotlin/text/case$do;->do()V

    .line 3
    :cond_0
    iget v0, p0, Lkotlin/text/case$do;->do:I

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lkotlin/text/case$do;->new:Landroid/support/v4/dn0;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lkotlin/text/case$do;->new:Landroid/support/v4/dn0;

    .line 6
    iput v1, p0, Lkotlin/text/case$do;->do:I

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final for()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/text/case$do;->if:I

    return v0
.end method

.method public final goto(I)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/text/case$do;->try:I

    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/text/case$do;->do:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lkotlin/text/case$do;->do()V

    .line 3
    :cond_0
    iget v0, p0, Lkotlin/text/case$do;->do:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final if()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/text/case$do;->try:I

    return v0
.end method

.method public final new()Landroid/support/v4/dn0;
    .locals 1
    .annotation build Landroid/support/v4/z41;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/text/case$do;->new:Landroid/support/v4/dn0;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/text/case$do;->else()Landroid/support/v4/dn0;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final this(I)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/text/case$do;->if:I

    return-void
.end method

.method public final try()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/text/case$do;->for:I

    return v0
.end method

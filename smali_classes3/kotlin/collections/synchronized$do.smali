.class public final Lkotlin/collections/synchronized$do;
.super Lkotlin/collections/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/synchronized;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/for<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n+ 2 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n1#1,207:1\n205#2:208\n*S KotlinDebug\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n*L\n121#1:208\n*E\n"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0014R\u0016\u0010\u0007\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\t\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "kotlin/collections/synchronized$do",
        "Lkotlin/collections/for;",
        "Landroid/support/v4/ub2;",
        "do",
        "",
        "for",
        "I",
        "count",
        "new",
        "index",
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
.field private for:I

.field private new:I

.field public final synthetic try:Lkotlin/collections/synchronized;


# direct methods
.method public constructor <init>(Lkotlin/collections/synchronized;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlin/collections/synchronized$do;->try:Lkotlin/collections/synchronized;

    invoke-direct {p0}, Lkotlin/collections/for;-><init>()V

    .line 2
    invoke-virtual {p1}, Lkotlin/collections/do;->size()I

    move-result v0

    iput v0, p0, Lkotlin/collections/synchronized$do;->for:I

    .line 3
    invoke-static {p1}, Lkotlin/collections/synchronized;->try(Lkotlin/collections/synchronized;)I

    move-result p1

    iput p1, p0, Lkotlin/collections/synchronized$do;->new:I

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/collections/synchronized$do;->for:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lkotlin/collections/for;->if()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lkotlin/collections/synchronized$do;->try:Lkotlin/collections/synchronized;

    invoke-static {v0}, Lkotlin/collections/synchronized;->if(Lkotlin/collections/synchronized;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlin/collections/synchronized$do;->new:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/collections/for;->for(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lkotlin/collections/synchronized$do;->try:Lkotlin/collections/synchronized;

    iget v1, p0, Lkotlin/collections/synchronized$do;->new:I

    add-int/lit8 v1, v1, 0x1

    .line 5
    invoke-static {v0}, Lkotlin/collections/synchronized;->for(Lkotlin/collections/synchronized;)I

    move-result v0

    rem-int/2addr v1, v0

    iput v1, p0, Lkotlin/collections/synchronized$do;->new:I

    .line 6
    iget v0, p0, Lkotlin/collections/synchronized$do;->for:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/collections/synchronized$do;->for:I

    :goto_0
    return-void
.end method

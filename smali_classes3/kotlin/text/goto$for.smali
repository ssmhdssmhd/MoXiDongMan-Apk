.class final Lkotlin/text/goto$for;
.super Landroid/support/v4/yr0;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/goto;->findAll(Ljava/lang/CharSequence;I)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/yr0;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/text/MatchResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/text/MatchResult;",
        "invoke",
        "()Lkotlin/text/MatchResult;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic $input:Ljava/lang/CharSequence;

.field public final synthetic $startIndex:I

.field public final synthetic this$0:Lkotlin/text/goto;


# direct methods
.method public constructor <init>(Lkotlin/text/goto;Ljava/lang/CharSequence;I)V
    .locals 0

    iput-object p1, p0, Lkotlin/text/goto$for;->this$0:Lkotlin/text/goto;

    iput-object p2, p0, Lkotlin/text/goto$for;->$input:Ljava/lang/CharSequence;

    iput p3, p0, Lkotlin/text/goto$for;->$startIndex:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v4/yr0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/text/goto$for;->invoke()Lkotlin/text/MatchResult;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/text/MatchResult;
    .locals 3
    .annotation build Landroid/support/v4/z41;
    .end annotation

    .line 2
    iget-object v0, p0, Lkotlin/text/goto$for;->this$0:Lkotlin/text/goto;

    iget-object v1, p0, Lkotlin/text/goto$for;->$input:Ljava/lang/CharSequence;

    iget v2, p0, Lkotlin/text/goto$for;->$startIndex:I

    invoke-virtual {v0, v1, v2}, Lkotlin/text/goto;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;

    move-result-object v0

    return-object v0
.end method

.class final Lkotlin/text/else$if$do;
.super Landroid/support/v4/yr0;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/else$if;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/yr0;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Landroid/support/v4/mx0;",
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
        "\u0000\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "it",
        "Landroid/support/v4/mx0;",
        "invoke",
        "(I)Landroid/support/v4/mx0;",
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
.field public final synthetic this$0:Lkotlin/text/else$if;


# direct methods
.method public constructor <init>(Lkotlin/text/else$if;)V
    .locals 0

    iput-object p1, p0, Lkotlin/text/else$if$do;->this$0:Lkotlin/text/else$if;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/support/v4/yr0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Landroid/support/v4/mx0;
    .locals 1
    .annotation build Landroid/support/v4/z41;
    .end annotation

    .line 2
    iget-object v0, p0, Lkotlin/text/else$if$do;->this$0:Lkotlin/text/else$if;

    invoke-virtual {v0, p1}, Lkotlin/text/else$if;->get(I)Landroid/support/v4/mx0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/text/else$if$do;->invoke(I)Landroid/support/v4/mx0;

    move-result-object p1

    return-object p1
.end method

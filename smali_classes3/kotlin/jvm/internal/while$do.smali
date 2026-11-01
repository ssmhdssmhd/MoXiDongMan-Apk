.class final Lkotlin/jvm/internal/while$do;
.super Landroid/support/v4/yr0;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/jvm/internal/while;->if()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/yr0;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/support/v4/qq0;",
        "Ljava/lang/CharSequence;",
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Landroid/support/v4/qq0;",
        "it",
        "",
        "invoke",
        "(Landroid/support/v4/qq0;)Ljava/lang/CharSequence;",
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
.field public final synthetic this$0:Lkotlin/jvm/internal/while;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/while;)V
    .locals 0

    iput-object p1, p0, Lkotlin/jvm/internal/while$do;->this$0:Lkotlin/jvm/internal/while;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/support/v4/yr0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/support/v4/qq0;)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # Landroid/support/v4/qq0;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lkotlin/jvm/internal/while$do;->this$0:Lkotlin/jvm/internal/while;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/while;->do(Lkotlin/jvm/internal/while;Landroid/support/v4/qq0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/qq0;

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/while$do;->invoke(Landroid/support/v4/qq0;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

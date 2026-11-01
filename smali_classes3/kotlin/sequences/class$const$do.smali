.class final Lkotlin/sequences/class$const$do;
.super Landroid/support/v4/yr0;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/class$const;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/yr0;",
        "Lkotlin/jvm/functions/Function1<",
        "TT;",
        "Ljava/lang/Boolean;",
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
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\u0008\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "T",
        "it",
        "",
        "invoke",
        "(Ljava/lang/Object;)Z",
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
.field public final synthetic $removed:Landroid/support/v4/bm1$do;

.field public final synthetic this$0:Lkotlin/sequences/class$const;


# direct methods
.method public constructor <init>(Lkotlin/sequences/class$const;Landroid/support/v4/bm1$do;)V
    .locals 0

    iput-object p1, p0, Lkotlin/sequences/class$const$do;->this$0:Lkotlin/sequences/class$const;

    iput-object p2, p0, Lkotlin/sequences/class$const$do;->$removed:Landroid/support/v4/bm1$do;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/support/v4/yr0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/sequences/class$const$do;->invoke(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lkotlin/sequences/class$const$do;->$removed:Landroid/support/v4/bm1$do;

    iget-boolean v0, v0, Landroid/support/v4/bm1$do;->element:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/sequences/class$const$do;->this$0:Lkotlin/sequences/class$const;

    iget-object v0, v0, Lkotlin/sequences/class$const;->if:Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->else(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lkotlin/sequences/class$const$do;->$removed:Landroid/support/v4/bm1$do;

    iput-boolean v1, p1, Landroid/support/v4/bm1$do;->element:Z

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

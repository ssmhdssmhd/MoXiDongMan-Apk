.class final Lrx/plugins/if$native;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/if;->throws()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lrx/Observable$Operator;",
        "Lrx/Observable$Operator;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrx/Observable$Operator;

    invoke-virtual {p0, p1}, Lrx/plugins/if$native;->do(Lrx/Observable$Operator;)Lrx/Observable$Operator;

    move-result-object p1

    return-object p1
.end method

.method public do(Lrx/Observable$Operator;)Lrx/Observable$Operator;
    .locals 1

    .line 1
    invoke-static {}, Lrx/plugins/new;->for()Lrx/plugins/new;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/new;->new()Landroid/support/v4/ip1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/ip1;->if(Lrx/Observable$Operator;)Lrx/Observable$Operator;

    move-result-object p1

    return-object p1
.end method

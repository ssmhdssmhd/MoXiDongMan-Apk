.class Lrx/Single$class$do;
.super Landroid/support/v4/b02;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single$class;->do(Landroid/support/v4/b02;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/b02<",
        "Lrx/Single<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Lrx/Single$class;

.field public final synthetic if:Landroid/support/v4/b02;


# direct methods
.method public constructor <init>(Lrx/Single$class;Landroid/support/v4/b02;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Single$class$do;->for:Lrx/Single$class;

    iput-object p2, p0, Lrx/Single$class$do;->if:Landroid/support/v4/b02;

    invoke-direct {p0}, Landroid/support/v4/b02;-><init>()V

    return-void
.end method


# virtual methods
.method public for(Lrx/Single;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/Single$class$do;->if:Landroid/support/v4/b02;

    invoke-virtual {p1, v0}, Lrx/Single;->u(Landroid/support/v4/b02;)Lrx/Subscription;

    return-void
.end method

.method public bridge synthetic if(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrx/Single;

    invoke-virtual {p0, p1}, Lrx/Single$class$do;->for(Lrx/Single;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/Single$class$do;->if:Landroid/support/v4/b02;

    invoke-virtual {v0, p1}, Landroid/support/v4/b02;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.class Lrx/Single$new$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single$new;->do(Landroid/support/v4/b02;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/b02;

.field public final synthetic for:Lrx/Single$new;

.field public final synthetic if:Lrx/if$do;


# direct methods
.method public constructor <init>(Lrx/Single$new;Landroid/support/v4/b02;Lrx/if$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Single$new$do;->for:Lrx/Single$new;

    iput-object p2, p0, Lrx/Single$new$do;->do:Landroid/support/v4/b02;

    iput-object p3, p0, Lrx/Single$new$do;->if:Lrx/if$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    new-instance v0, Lrx/Single$new$do$do;

    invoke-direct {v0, p0}, Lrx/Single$new$do$do;-><init>(Lrx/Single$new$do;)V

    .line 2
    iget-object v1, p0, Lrx/Single$new$do;->do:Landroid/support/v4/b02;

    invoke-virtual {v1, v0}, Landroid/support/v4/b02;->do(Lrx/Subscription;)V

    .line 3
    iget-object v1, p0, Lrx/Single$new$do;->for:Lrx/Single$new;

    iget-object v1, v1, Lrx/Single$new;->if:Lrx/Single;

    invoke-virtual {v1, v0}, Lrx/Single;->u(Landroid/support/v4/b02;)Lrx/Subscription;

    return-void
.end method

.class Lrx/schedulers/do$if$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/schedulers/do$if;->if(Lrx/functions/Action0;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/schedulers/do$for;

.field public final synthetic if:Lrx/schedulers/do$if;


# direct methods
.method public constructor <init>(Lrx/schedulers/do$if;Lrx/schedulers/do$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/schedulers/do$if$if;->if:Lrx/schedulers/do$if;

    iput-object p2, p0, Lrx/schedulers/do$if$if;->do:Lrx/schedulers/do$for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/schedulers/do$if$if;->if:Lrx/schedulers/do$if;

    iget-object v0, v0, Lrx/schedulers/do$if;->if:Lrx/schedulers/do;

    iget-object v0, v0, Lrx/schedulers/do;->do:Ljava/util/Queue;

    iget-object v1, p0, Lrx/schedulers/do$if$if;->do:Lrx/schedulers/do$for;

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

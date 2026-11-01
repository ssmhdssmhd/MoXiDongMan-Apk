.class final Lrx/functions/do$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/do;->try(Lrx/functions/Action0;Ljava/lang/Object;)Lrx/functions/Func0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/functions/Action0;

.field public final synthetic if:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lrx/functions/Action0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/functions/do$for;->do:Lrx/functions/Action0;

    iput-object p2, p0, Lrx/functions/do$for;->if:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/functions/do$for;->do:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 2
    iget-object v0, p0, Lrx/functions/do$for;->if:Ljava/lang/Object;

    return-object v0
.end method

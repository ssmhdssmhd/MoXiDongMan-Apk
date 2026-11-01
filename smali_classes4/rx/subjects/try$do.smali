.class Lrx/subjects/try$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/try;->addUnsubscriber(Landroid/support/v4/y22;Lrx/subjects/try$for;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/subjects/try$for;

.field public final synthetic if:Lrx/subjects/try;


# direct methods
.method public constructor <init>(Lrx/subjects/try;Lrx/subjects/try$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/subjects/try$do;->if:Lrx/subjects/try;

    iput-object p2, p0, Lrx/subjects/try$do;->do:Lrx/subjects/try$for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/subjects/try$do;->if:Lrx/subjects/try;

    iget-object v1, p0, Lrx/subjects/try$do;->do:Lrx/subjects/try$for;

    invoke-virtual {v0, v1}, Lrx/subjects/try;->remove(Lrx/subjects/try$for;)V

    return-void
.end method

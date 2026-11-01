.class Lrx/subjects/case$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/case;->l6(Ljava/lang/Throwable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/Throwable;

.field public final synthetic if:Lrx/subjects/case;


# direct methods
.method public constructor <init>(Lrx/subjects/case;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/subjects/case$for;->if:Lrx/subjects/case;

    iput-object p2, p0, Lrx/subjects/case$for;->do:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/subjects/case$for;->if:Lrx/subjects/case;

    iget-object v1, p0, Lrx/subjects/case$for;->do:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lrx/subjects/case;->i6(Ljava/lang/Throwable;)V

    return-void
.end method

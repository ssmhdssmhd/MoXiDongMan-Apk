.class Lrx/subjects/case$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/case;->k6(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/subjects/case;


# direct methods
.method public constructor <init>(Lrx/subjects/case;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/subjects/case$if;->do:Lrx/subjects/case;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/case$if;->do:Lrx/subjects/case;

    invoke-virtual {v0}, Lrx/subjects/case;->h6()V

    return-void
.end method

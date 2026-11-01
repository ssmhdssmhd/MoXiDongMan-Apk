.class public Lfreemarker/core/d0$this;
.super Lfreemarker/template/native;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "this"
.end annotation


# instance fields
.field private template:Lfreemarker/template/static;

.field public final synthetic this$0:Lfreemarker/core/d0;


# direct methods
.method public constructor <init>(Lfreemarker/core/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/d0$this;->this$0:Lfreemarker/core/d0;

    invoke-direct {p0}, Lfreemarker/template/native;-><init>()V

    .line 2
    invoke-virtual {p1}, Lfreemarker/core/d0;->e2()Lfreemarker/template/static;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/d0$this;->template:Lfreemarker/template/static;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/d0;Lfreemarker/template/static;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lfreemarker/core/d0$this;->this$0:Lfreemarker/core/d0;

    invoke-direct {p0}, Lfreemarker/template/native;-><init>()V

    .line 4
    iput-object p2, p0, Lfreemarker/core/d0$this;->template:Lfreemarker/template/static;

    return-void
.end method


# virtual methods
.method public getTemplate()Lfreemarker/template/static;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0$this;->template:Lfreemarker/template/static;

    if-nez v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/d0$this;->this$0:Lfreemarker/core/d0;

    invoke-virtual {v0}, Lfreemarker/core/d0;->e2()Lfreemarker/template/static;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public setTemplate(Lfreemarker/template/static;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/d0$this;->template:Lfreemarker/template/static;

    return-void
.end method

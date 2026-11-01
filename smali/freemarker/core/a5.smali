.class public Lfreemarker/core/a5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MO::",
        "Lfreemarker/core/TemplateMarkupOutputModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final do:Ljava/lang/String;

.field private final if:Lfreemarker/core/y1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfreemarker/core/y1<",
            "TMO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfreemarker/core/y1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/core/y1<",
            "TMO;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/a5;->if:Lfreemarker/core/y1;

    .line 3
    iput-object p2, p0, Lfreemarker/core/a5;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public do()Lfreemarker/core/TemplateMarkupOutputModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/a5;->if:Lfreemarker/core/y1;

    iget-object v1, p0, Lfreemarker/core/a5;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfreemarker/core/y1;->else(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object v0

    return-object v0
.end method

.class Lfreemarker/core/c$final;
.super Lfreemarker/core/abstract;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "final"
.end annotation


# instance fields
.field private final final:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/abstract;-><init>()V

    .line 2
    iput p1, p0, Lfreemarker/core/c$final;->final:I

    return-void
.end method


# virtual methods
.method public r(Ljava/lang/Number;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance p2, Landroid/support/v4/wy1;

    new-instance v0, Ljava/util/Date;

    invoke-static {p1}, Lfreemarker/core/c;->if(Ljava/lang/Number;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iget p1, p0, Lfreemarker/core/c$final;->final:I

    invoke-direct {p2, v0, p1}, Landroid/support/v4/wy1;-><init>(Ljava/util/Date;I)V

    return-object p2
.end method

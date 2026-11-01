.class abstract Lfreemarker/core/protected$do;
.super Lfreemarker/core/switch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/protected;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "do"
.end annotation


# instance fields
.field public final final:Ljava/lang/Boolean;

.field public final super:I


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/switch;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/protected$do;->final:Ljava/lang/Boolean;

    .line 3
    iput p2, p0, Lfreemarker/core/protected$do;->super:I

    return-void
.end method


# virtual methods
.method public t(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Landroid/support/v4/nl2;

    new-instance v0, Lfreemarker/core/z4;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "The value of the following has unknown date type, but ?"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lfreemarker/core/return;->this:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " needs a value where it\'s known if it\'s a date (no time part), time, or date-time value:"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lfreemarker/core/z4;-><init>([Ljava/lang/Object;)V

    iget-object v1, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    .line 2
    invoke-virtual {v0, v1}, Lfreemarker/core/z4;->if(Lfreemarker/core/h0;)Lfreemarker/core/z4;

    move-result-object v0

    const-string v1, "Use ?date, ?time, or ?datetime to tell FreeMarker the exact type."

    invoke-virtual {v0, v1}, Lfreemarker/core/z4;->this(Ljava/lang/String;)Lfreemarker/core/z4;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/z4;)V

    throw p1
.end method

.method public u(Ljava/util/Date;ILfreemarker/core/d0;)Z
    .locals 1

    const/4 p3, 0x0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    return p3

    .line 1
    :cond_0
    iget-object p2, p0, Lfreemarker/core/protected$do;->final:Ljava/lang/Boolean;

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 3
    :cond_1
    instance-of p1, p1, Ljava/sql/Time;

    if-eqz p1, :cond_2

    .line 4
    invoke-static {p0}, Landroid/support/v4/ul2;->super(Lfreemarker/core/h4;)I

    move-result p1

    sget p2, Landroid/support/v4/ul2;->new:I

    if-ge p1, p2, :cond_3

    :cond_2
    const/4 p3, 0x1

    :cond_3
    return p3
.end method

.class Lfreemarker/ext/jsp/this;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;


# static fields
.field public static final case:I = 0x3

.field public static final else:I = 0x4

.field public static final for:I = -0x1

.field public static final new:I = 0x1

.field public static final try:I = 0x2


# instance fields
.field private final do:Ljavax/servlet/jsp/PageContext;

.field private final if:I


# direct methods
.method public constructor <init>(Ljavax/servlet/jsp/PageContext;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/jsp/this;->do:Ljavax/servlet/jsp/PageContext;

    .line 3
    iput p2, p0, Lfreemarker/ext/jsp/this;->if:I

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/ext/jsp/this;->if:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lfreemarker/ext/jsp/this;->do:Ljavax/servlet/jsp/PageContext;

    invoke-virtual {v0, p1}, Ljavax/servlet/jsp/PageContext;->findAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lfreemarker/ext/jsp/this;->do:Ljavax/servlet/jsp/PageContext;

    invoke-virtual {v1, p1, v0}, Ljavax/servlet/jsp/PageContext;->getAttribute(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    :goto_0
    invoke-static {}, Lfreemarker/ext/beans/try;->super()Lfreemarker/ext/beans/try;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/try;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

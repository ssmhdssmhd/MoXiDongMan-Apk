.class Lfreemarker/ext/jsp/new$do;
.super Ljavax/servlet/jsp/JspEngineInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/jsp/new;->do()Ljavax/servlet/jsp/JspEngineInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lfreemarker/ext/jsp/new;


# direct methods
.method public constructor <init>(Lfreemarker/ext/jsp/new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/jsp/new$do;->do:Lfreemarker/ext/jsp/new;

    invoke-direct {p0}, Ljavax/servlet/jsp/JspEngineInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/new$do;->do:Lfreemarker/ext/jsp/new;

    invoke-virtual {v0}, Lfreemarker/ext/jsp/new;->for()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

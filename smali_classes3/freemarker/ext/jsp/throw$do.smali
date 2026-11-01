.class Lfreemarker/ext/jsp/throw$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/jsp/el/VariableResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/jsp/throw;->transient()Ljavax/servlet/jsp/el/VariableResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljavax/servlet/jsp/PageContext;

.field public final synthetic if:Lfreemarker/ext/jsp/throw;


# direct methods
.method public constructor <init>(Lfreemarker/ext/jsp/throw;Ljavax/servlet/jsp/PageContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/jsp/throw$do;->if:Lfreemarker/ext/jsp/throw;

    iput-object p2, p0, Lfreemarker/ext/jsp/throw$do;->do:Ljavax/servlet/jsp/PageContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/jsp/el/ELException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/throw$do;->do:Ljavax/servlet/jsp/PageContext;

    invoke-virtual {v0, p1}, Ljavax/servlet/jsp/PageContext;->findAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

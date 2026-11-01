.class public abstract Lcom/google/common/io/if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/if$break;,
        Lcom/google/common/io/if$goto;,
        Lcom/google/common/io/if$else;,
        Lcom/google/common/io/if$catch;,
        Lcom/google/common/io/if$case;,
        Lcom/google/common/io/if$this;
    }
.end annotation


# static fields
.field private static final do:Lcom/google/common/io/if;

.field private static final for:Lcom/google/common/io/if;

.field private static final if:Lcom/google/common/io/if;

.field private static final new:Lcom/google/common/io/if;

.field private static final try:Lcom/google/common/io/if;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/common/io/if$goto;

    const/16 v1, 0x3d

    .line 2
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "base64()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/io/if$goto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/if;->do:Lcom/google/common/io/if;

    .line 3
    new-instance v0, Lcom/google/common/io/if$goto;

    const-string v2, "base64Url()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 4
    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/io/if$goto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/if;->if:Lcom/google/common/io/if;

    .line 5
    new-instance v0, Lcom/google/common/io/if$catch;

    const-string v2, "base32()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    .line 6
    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/io/if$catch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/if;->for:Lcom/google/common/io/if;

    .line 7
    new-instance v0, Lcom/google/common/io/if$catch;

    const-string v2, "base32Hex()"

    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/io/if$catch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/if;->new:Lcom/google/common/io/if;

    .line 9
    new-instance v0, Lcom/google/common/io/if$else;

    const-string v1, "base16()"

    const-string v2, "0123456789ABCDEF"

    invoke-direct {v0, v1, v2}, Lcom/google/common/io/if$else;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/io/if;->try:Lcom/google/common/io/if;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do()Lcom/google/common/io/if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/io/if;->try:Lcom/google/common/io/if;

    return-object v0
.end method

.method public static for()Lcom/google/common/io/if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/io/if;->new:Lcom/google/common/io/if;

    return-object v0
.end method

.method public static if()Lcom/google/common/io/if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/io/if;->for:Lcom/google/common/io/if;

    return-object v0
.end method

.method public static import(Ljava/io/Reader;Ljava/lang/String;)Ljava/io/Reader;
    .locals 1
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/common/io/if$for;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/if$for;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    return-object v0
.end method

.method public static new()Lcom/google/common/io/if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/io/if;->do:Lcom/google/common/io/if;

    return-object v0
.end method

.method public static switch(Ljava/lang/Appendable;Ljava/lang/String;I)Ljava/lang/Appendable;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Landroid/support/v4/af1;->new(Z)V

    .line 4
    new-instance v0, Lcom/google/common/io/if$new;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/common/io/if$new;-><init>(ILjava/lang/Appendable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static throws(Ljava/io/Writer;Ljava/lang/String;I)Ljava/io/Writer;
    .locals 0
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/common/io/if;->switch(Ljava/lang/Appendable;Ljava/lang/String;I)Ljava/lang/Appendable;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/common/io/if$try;

    invoke-direct {p2, p1, p0}, Lcom/google/common/io/if$try;-><init>(Ljava/lang/Appendable;Ljava/io/Writer;)V

    return-object p2
.end method

.method public static try()Lcom/google/common/io/if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/io/if;->if:Lcom/google/common/io/if;

    return-object v0
.end method

.method private static while([BI)[B
    .locals 2

    .line 1
    array-length v0, p0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public final break(Lcom/google/common/io/goto;)Lcom/google/common/io/new;
    .locals 1
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/io/if$if;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/if$if;-><init>(Lcom/google/common/io/if;Lcom/google/common/io/goto;)V

    return-object v0
.end method

.method public abstract case(Ljava/lang/CharSequence;)Z
.end method

.method public abstract catch(Ljava/io/Reader;)Ljava/io/InputStream;
    .annotation build Landroid/support/v4/li0;
    .end annotation
.end method

.method public class([B)Ljava/lang/String;
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/common/io/if;->const([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final const([BII)Ljava/lang/String;
    .locals 2

    add-int v0, p2, p3

    .line 1
    array-length v1, p1

    invoke-static {p2, v0, v1}, Landroid/support/v4/af1;->s(III)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/google/common/io/if;->return(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    :try_start_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/common/io/if;->final(Ljava/lang/Appendable;[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public default(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public final else(Ljava/lang/CharSequence;)[B
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/io/if;->goto(Ljava/lang/CharSequence;)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/google/common/io/if$this; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract extends()Lcom/google/common/io/if;
.end method

.method public abstract final(Ljava/lang/Appendable;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract finally(C)Lcom/google/common/io/if;
.end method

.method public final goto(Ljava/lang/CharSequence;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/if$this;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/io/if;->default(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/io/if;->public(I)I

    move-result v0

    new-array v0, v0, [B

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/google/common/io/if;->this([BLjava/lang/CharSequence;)I

    move-result p1

    .line 4
    invoke-static {v0, p1}, Lcom/google/common/io/if;->while([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public abstract native()Lcom/google/common/io/if;
.end method

.method public abstract package(Ljava/lang/String;I)Lcom/google/common/io/if;
.end method

.method public abstract public(I)I
.end method

.method public abstract return(I)I
.end method

.method public abstract static()Lcom/google/common/io/if;
.end method

.method public final super(Lcom/google/common/io/else;)Lcom/google/common/io/for;
    .locals 1
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/io/if$do;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/if$do;-><init>(Lcom/google/common/io/if;Lcom/google/common/io/else;)V

    return-object v0
.end method

.method public abstract this([BLjava/lang/CharSequence;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/if$this;
        }
    .end annotation
.end method

.method public abstract throw(Ljava/io/Writer;)Ljava/io/OutputStream;
    .annotation build Landroid/support/v4/li0;
    .end annotation
.end method
